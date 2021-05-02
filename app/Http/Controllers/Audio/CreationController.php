<?php
/*
 * Primary Maintainer: Raymond Chow
 *
 * Code that will create and store an audio file to the database
 */

namespace App\Http\Controllers\Audio;

use App\Core\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use Throwable;

/**
 * Handles audio file creation from user input and storage
 * Class CreationController
 * @package App\Http\Controllers\Audio
 */
class CreationController extends Controller
{
    /**
     * Shows the audio create form
     *
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create()
    {
        // Allow audio files only to be created by administrators
        if (Auth::user()->user_type < 2) {
            abort(403, "Unauthorized.");
        }

        return view('audio.create');
    }

    /**
     * Store user-inputted audio file contents to the database
     *
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse|mixed
     */
    public function store(Request $request)
    {
        if (Auth::user()->user_type < 2) {
            abort(403, "Unauthorized.");
        }

        $request->validate([
            'name' => 'required|string|min:1',
            'description' => 'nullable|string',
            'file' => 'required|file|mimes:mp3',
            'transcript' => 'nullable|string',
            'audio_date' => 'nullable|date'
        ]);

        $outerAudioId = -1;

        try {
            return DB::transaction(function () use ($request, &$outerAudioId) {
                $audioId = DB::table('audio')->insertGetId([
                    'name' => $request->get('name'),
                    'description' => $request->get('description'),
                    'audio_date' => $request->get('audio_date'),
                    'upload_date' => DB::raw('now()')
                ]);

                $outerAudioId = $audioId;

                $request->file('file')
                    ->storeAs(
                        '',
                        $audioId . '.mp3',
                        'audio');

                // We need an initial transcript to attach to the edit request
                // due to a quirk in how we designed our schema.
                $initialTranscriptId = DB::table('transcripts')->insertGetId([
                    'audio_id' => $audioId,
                    'text' => '',
                    'revision_comment' => 'System generated initial transcript',
                    'is_latest' => false
                ]);

                $transcriptText = $request->get('transcript');
                if (! $transcriptText || empty($transcriptText)) {
                    $transcriptText = 'No transcript provided.';
                }

                $editRequestId = DB::table('user_edit_request')->insertGetId([
                    'user_id' => Auth::user()->id,
                    'transcript_id' => $initialTranscriptId,
                    'text' => $transcriptText,
                    'edit_comment' => 'Initial transcript',
                    'request_approved' => true,
                    'create_time' => DB::raw('now()')
                ]);

                $transcriptId = DB::table('transcripts')->insertGetId([
                    'audio_id' => $audioId,
                    'text' => $transcriptText,
                    'revision_comment' => 'Initial transcript',
                    'is_latest' => true
                ]);

                DB::table('audit_logs')->insert([
                    'user_id' => Auth::user()->id,
                    'type' => 'audio:create',
                    'data' => json_encode([
                        'audio_id' => $audioId
                    ]),
                    'create_time' => DB::raw('now()')
                ]);

                flash('Audio created successfully.', 'success');
                return redirect('/audio/' . $audioId);
            });
        }
        catch (Throwable $ex) {
            // delete the file, if it exists
            if ($outerAudioId !== -1) {
                try {
                    Storage::disk('audio')->delete($outerAudioId . '.mp3');
                }
                catch (Throwable $ex) {
                    Log::error("Unable to delete audio file " . $outerAudioId);
                }
            }

            // return to the user with an error and current input
            Log::error($ex);
            flash("An unknown error occurred while creating the audio.", "danger");
            return back()->withInput();
        }
    }
}
