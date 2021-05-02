<?php
/*
 * Primary Maintainer: Raymond Chow
 */

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Jfcherng\Diff\DiffHelper;

/**
 * Transcript history-result obtaining logic
 * @package App\Http\Controllers\Api
 */
class HistoryController extends Controller
{
    /**
     * Process a diff between the successful transcript edit request text and its previous text
     *
     * @param Request $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\Routing\ResponseFactory|\Illuminate\Http\Response
     */
    public function diff(Request $request)
    {
        $request->validate([
            'user_edit_request_id' => 'required|integer'
        ]);

        $data = DB::selectOne("SELECT user_edit_request.id, user_edit_request.user_id,
                users.name AS user_name, user_edit_request.transcript_id,
                user_edit_request.edit_comment,
                user_edit_request.create_time,
                user_edit_request.text AS new_text,
                transcripts.text AS old_text
            FROM user_edit_request
            INNER JOIN transcripts ON user_edit_request.transcript_id = transcripts.id
            INNER JOIN audio on audio.id = transcripts.audio_id
            INNER JOIN users on users.id = user_edit_request.user_id
            WHERE request_approved = true AND user_edit_request.id = ?
            ORDER BY user_edit_request.id DESC", [$request->get('user_edit_request_id')]);
        if (! $data) {
            abort(404, 'User edit request not found.');
        }

        $data = (object) $data;

        $rendererOptions = [
            'detailLevel' => 'word',
            'lineNumbers' => false
        ];
        return response(DiffHelper::calculate($data->old_text, $data->new_text, 'SideBySide', [], $rendererOptions));
    }
}
