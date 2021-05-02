<?php
/**
 * Primary Maintainer: Alex Viola
 */

namespace App\Http\Controllers\Admin;

use App\Core\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

/**
 * Edit request approval list logic
 * @package App\Http\Controllers\Admin
 */
class EditRequestApprovalController extends Controller
{
    /**
     * Show all current transcript edit requests
     *
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function get()
    {
        if (Auth::user()->user_type < 2) {
            abort(403, 'Forbidden.');
        }

        $requests = DB::select("SELECT
                user_edit_request.id, user_edit_request.edit_comment, user_edit_request.create_time,
                users.name AS user_name, audio.id AS audio_id, audio.name AS audio_name
            FROM user_edit_request
            INNER JOIN transcripts ON user_edit_request.transcript_id = transcripts.id AND transcripts.is_latest
            INNER JOIN audio on audio.id = transcripts.audio_id
            INNER JOIN users ON user_edit_request.user_id = users.id
            WHERE request_approved IS NULL");

        return view('admin.edit_request_list', compact('requests'));
    }
}
