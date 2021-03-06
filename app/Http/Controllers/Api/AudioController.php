<?php
/*
 * Primary Maintainer: Raymond Chow
 */

namespace App\Http\Controllers\Api;

use App\Data\Audio;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

/**
 * Audio result-obtaining logic
 * @package App\Http\Controllers\Api
 */
class AudioController extends Controller
{
    /**
     * Does filtering and searching of audio objects
     * See routes/api.php for use
     *
     * @param Request $request
     * @return array Audio result object
     */
    public function list(Request $request)
    {
        $request->validate([
            'tags' => 'nullable|array',
            'tags.*' => 'required|integer',
            'search' => 'nullable|string',
            'page' => 'nullable|integer|min:1'
        ]);

        $page = $request->get('page') ?? 1;
        return Audio::get(
            page: $page,
            perPage: Audio::PER_PAGE,
            tags: ($request->get('tags') ?? null),
            search: ($request->get('search') ?? '')
        );
    }
}
