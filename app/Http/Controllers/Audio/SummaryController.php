<?php

namespace App\Http\Controllers\Audio;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SummaryController extends Controller
{
    public function get(Request $request, $id)
    {
        $audio = DB::selectOne("SELECT * FROM results WHERE id = ?", [$id]);
        if (! $audio) {
            abort(404);
        }

        $audio = (object) $audio;

        /*
        if (strlen($audio->transcript_text) < 1) {
            $audio->transcript_text = "There was no transcript created for this audio file.";
        }
        */

        return view('audio.summary', compact(['audio']));
    }
}
