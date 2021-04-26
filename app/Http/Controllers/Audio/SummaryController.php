<?php
/**
 * Primary Maintainer: Raymond Chow
 */

namespace App\Http\Controllers\Audio;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

/**
 * Audio summary page logic
 * @package App\Http\Controllers\Audio
 */
class SummaryController extends Controller
{
    /**
     * Show the main metadata of the audio file
     *
     * @param Request $request
     * @param $id Audio ID
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function get(Request $request, $id)
    {
        $audio = DB::selectOne("SELECT * FROM results WHERE id = ?", [$id]);
        if (! $audio) {
            abort(404);
        }

        $audio = (object) $audio;
        $tags = DB::select("SELECT category_name, tag_name FROM filters WHERE tag_id IN (SELECT tag_id FROM audio_tag WHERE audio_id = ?)", [$audio->id]);

        /*
        if (strlen($audio->transcript_text) < 1) {
            $audio->transcript_text = "There was no transcript created for this audio file.";
        }
        */
        return view('audio.summary', compact(['audio', 'tags']));
    }
}
