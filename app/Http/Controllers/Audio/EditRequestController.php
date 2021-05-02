<?php
/*
 * Primary Maintainer: Alex Benasutti, Raymond Chow
 *
 * Handles queries for all user edit requests, storage, approval, and creation
 */

namespace App\Http\Controllers\Audio;

use App\Core\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Jfcherng\Diff\DiffHelper;
use Throwable;

/**
 * User-facing edit request logic
 * @package App\Http\Controllers\Audio
 */
class EditRequestController extends Controller
{
    /**
     * Attempt to create an edit request using user input.
     *
     * @param Request $request Current Request
     * @param int $id Audio ID
     * @return object [ bool success, (string message if success is false)]
     */
    private function tryEditRequest(Request $request, int $id): object
    {
        try {
            return DB::transaction(function () use ($request, $id) {
                $audio = DB::selectOne("SELECT id FROM audio WHERE id = ?", [$id]);
                if (! $audio) {
                    return [
                        'success' => false,
                        'message' => 'Invalid audio.'
                    ];
                }

                $newTranscript = $request->get('transcript_edit_text');
                $oldTranscriptId = optional(DB::selectOne('SELECT id FROM transcripts WHERE audio_id = ? AND is_latest', [$id]))->id;
                if (! $oldTranscriptId) {
                    return [
                        'success' => false,
                        'message' => 'Unknown error. Old transcript could not be found.'
                    ];
                }

                DB::insert(
                    'INSERT INTO user_edit_request (user_id, transcript_id, text, edit_comment, create_time) VALUES (?, ?, ?, ?, now())',
                    [Auth::user()->id, $oldTranscriptId, $newTranscript, $request->get('edit_comment'), ]
                );

                return (object) [
                    'success' => true
                ];
            });
        }
        catch (Throwable $throwable) {
            Log::error($throwable);
            return (object) [
                'success' => false
            ];
        }
    }

    /**
     * Show the user the form to edit the transcript.
     *
     * @param Request $request
     * @param $id Audio ID
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(Request $request, $id)
    {
        $audio = DB::selectOne("SELECT * FROM results WHERE id = ?", [$id]);

        return view('audio.edit_request', compact(['audio']));
    }

    /**
     * Create the edit request and redirect the user.
     *
     * @param Request $request
     * @param $id Audio ID
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function store(Request $request, $id)
    {
        $request->validate([
            'transcript_edit_text' => 'required|string',
            'edit_comment' => 'nullable|string'
        ]);

        $result = $this->tryEditRequest($request, $id);
        if ($result->success) {
            flash("You have successfully submitted an edit request.", "success");
            return redirect('/audio/' . intval($id) . '/requests');
        } else {
            return back()->withInput()
                ->with('error', "An unknown error occurred during the creation of your edit request.");
        }
    }

    /**
     * Show the current pending edit requests
     *
     * @param Request $request Current request
     * @param $id Audio ID
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function all(Request $request, $id)
    {
        $audio = DB::selectOne("SELECT * FROM audio WHERE id = ?", [$id]);
        if (! $audio) {
            abort(404);
        }

        // $requests = DB::select('SELECT * FROM user_edit_request WHERE request_approved IS NULL AND transcript_id IN (SELECT id FROM transcripts WHERE audio_id = ?)', [$id]);

        $requests = DB::select("SELECT user_edit_request.id, user_edit_request.user_id,
                users.name AS user_name, user_edit_request.transcript_id,
                user_edit_request.edit_comment,
                user_edit_request.create_time
            FROM user_edit_request
            INNER JOIN transcripts ON user_edit_request.transcript_id = transcripts.id AND transcripts.is_latest
            INNER JOIN audio on audio.id = transcripts.audio_id
            INNER JOIN users on users.id = user_edit_request.user_id
            WHERE request_approved IS NULL AND audio.id = ?", [$id]);
        // dd($requests);

        return view('audio.pending_requests', compact(['audio', 'requests']));
    }

    /**
     * Calculate differences in text between old and new transcript
     * To be consumed as an API
     *
     * @param Request $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\Routing\ResponseFactory|\Illuminate\Http\Response
     */
    public function diff(Request $request)
    {
        $request->validate([
            'user_edit_request_id' => 'required|integer'
        ]);

        $text = DB::selectOne("SELECT transcripts.text AS old_text, user_edit_request.text AS new_text FROM user_edit_request
                INNER JOIN transcripts ON transcripts.id = user_edit_request.transcript_id
                WHERE user_edit_request.id = ?", [$request->get('user_edit_request_id')]);
        if (! $text) {
            abort(404);
        }
        $text = (object) $text;

        $rendererOptions = [
            'detailLevel' => 'word',
            'lineNumbers' => false
        ];
        return response(DiffHelper::calculate($text->old_text, $text->new_text, 'SideBySide', [], $rendererOptions));
    }

    /**
     * Set the status of an edit request
     *
     * @param Request $request Current request
     * @return array|mixed
     */
    public function setRequestStatus(Request $request)
    {
        // Allow requests to be approved or denied by administrators
        if (Auth::user()->user_type < 2) {
            abort(403, "Unauthorized.");
        }

        $request->validate([
            'user_edit_request_id' => 'required|integer'
        ]);

        try {
            return DB::transaction(function () use ($request) {
                $id = $request->get('user_edit_request_id');

                $editRequest = DB::selectOne("SELECT a.id AS audio_id, u.text, u.edit_comment FROM user_edit_request u
                    INNER JOIN transcripts t on u.transcript_id = t.id
                    INNER JOIN audio a ON t.audio_id = a.id
                    WHERE u.id = ? AND u.request_approved IS NULL",
                    [$id]);
                if (! $editRequest) {
                    return [
                        'success' => false,
                        'message' => 'Unable to find edit request.'
                    ];
                }
                $editRequest = (object) $editRequest;

                if ($request->type === 'approve') {
                    // update current transcript with new transcript
                    DB::update("UPDATE user_edit_request SET request_approved = 'true' WHERE id = ?", [$id]);
                    DB::update("UPDATE transcripts SET is_latest = 'false' WHERE audio_id = ?", [$editRequest->audio_id]);
                    DB::insert("INSERT INTO transcripts (audio_id, text, revision_comment, is_latest) VALUES (?, ?, ?, 'true')", [$editRequest->audio_id, $editRequest->text, $editRequest->edit_comment]);
                } else if ($request->type === 'deny') {
                    // set deny state to current transcript
                    DB::update("UPDATE user_edit_request SET request_approved = 'false' WHERE id = ?", [$id]);
                }

                DB::table('audit_logs')->insert([
                    'user_id' => Auth::user()->id,
                    'type' => 'transcript:' . $request->type,
                    'data' => json_encode([
                        'edit_request_id' => $id
                    ]),
                    'create_time' => DB::raw('now()')
                ]);

                return [
                    'success' => true
                ];
            });
        }
        catch (Throwable $throwable) {
            Log::error($throwable);
            return [
                'success' => false,
                'message' => 'An unknown error occurred.'
            ];
        }
    }
}
