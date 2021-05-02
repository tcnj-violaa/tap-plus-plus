<?php
/*
 * Primary Maintainer: Alex Benasutti
 *
 * Handles a get query for all transcript history for an audio file
 */

namespace App\Http\Controllers\Audio;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

/**
 * User-facing transcript history logic
 * @package App\Http\Controllers\Audio
 */
class HistoryController extends Controller
{
    /**
     * Grab all successful edit requests and display them to the user
     *
     * @param Request $request
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function get(Request $request, $id)
    {
        $audio = DB::selectOne("SELECT * FROM audio WHERE id = ?", [$id]);
        if (! $audio) {
            abort(404);
        }

        $history = DB::select("SELECT user_edit_request.id, user_edit_request.user_id,
                users.name AS user_name, user_edit_request.transcript_id,
                user_edit_request.edit_comment,
                user_edit_request.create_time
            FROM user_edit_request
            INNER JOIN transcripts ON user_edit_request.transcript_id = transcripts.id
            INNER JOIN audio on audio.id = transcripts.audio_id
            INNER JOIN users on users.id = user_edit_request.user_id
            WHERE request_approved = true AND audio.id = ?
            ORDER BY user_edit_request.id DESC", [$id]);

        // dd($history);

        return view('audio.transcript_history', compact(['audio', 'history']));
    }
}
