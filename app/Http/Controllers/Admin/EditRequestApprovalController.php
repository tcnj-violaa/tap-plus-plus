<?php
/**
 * Primary Maintainer: Alex Viola
 */

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EditRequestApprovalController extends Controller
{
    public function get()
    {
        /*
        $open_requests = DB::select("SELECT * FROM user_edit_request
            INNER JOIN transcripts ON user_edit_request.transcript_id = transcripts.id AND transcripts.is_latest
            INNER JOIN audio on audio.id = transcripts.audio_id
            WHERE request_approved IS NULL");
        */
        //dd($results);

        return view('admin.edit_request_approval', compact('open_requests'));
    }
}
