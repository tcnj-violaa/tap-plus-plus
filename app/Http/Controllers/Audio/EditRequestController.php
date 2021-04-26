<?php
/*
 * Primary Maintainer: Alex Benasutti
 */

namespace App\Http\Controllers\Audio;

use App\Core\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Throwable;

class EditRequestController extends Controller
{
    private $redirectUrl = '/';

    private function tryEditRequest(Request $request, int $id): object
    {
        try {
            return DB::transaction(function () use ($request, $id) {
                // dd($request->all());
                $audio = DB::selectOne("SELECT id FROM audio WHERE id = ?", [$id]);
                if (! $audio) {
                    return [
                        'success' => false,
                        'message' => 'Invalid audio.'
                    ];
                }

                $newTranscript = $request->get('transcript_edit_text');
                $oldTranscriptId = optional(DB::selectOne('SELECT id FROM transcripts WHERE audio_id = ?', [$id]))->id;
                if (! $oldTranscriptId) {
                    return [
                        'success' => false,
                        'message' => 'Unknown error. Old transcript could not be found.'
                    ];
                }

                DB::insert(
                    'INSERT INTO user_edit_request (user_id, transcript_id, text, edit_comment) VALUES (?, ?, ?, ?)',
                    [Auth::user()->id, $oldTranscriptId, $newTranscript, $request->get('edit_comment')]
                );

                return (object) [
                    'success' => true
                ];
            });
        }
        catch (\Throwable $throwable) {
            Log::error($throwable);
            return (object) [
                'success' => false
            ];
        }
    }

    public function create(Request $request, $id)
    {
        $audio = DB::selectOne("SELECT * FROM results WHERE id = ?", [$id]);

        return view('audio.edit_request', compact(['audio']));
    }

    public function store(Request $request, $id)
    {
        $request->validate([
            'transcript_edit_text' => 'required|string',
            'edit_comment' => 'nullable|string'
        ]);

        $result = $this->tryEditRequest($request, $id);
        if ($result->success) {
            flash("You have successfully submitted an edit request", "success");
            return redirect($this->redirectUrl);
        } else {
            return back()->withInput()
                ->with('error', "An unknown error occurred during the creation of your edit request.");
        }
    }

    public function all(Request $request, $id)
    {
        
    }
}
