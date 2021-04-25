<?php
/*
 * Primary Maintainer: Raymond Chow
 */

namespace App\Http\Controllers\Api;

use App\Data\Audio;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AudioController extends Controller
{
    public function get(Request $request)
    {
        $request->validate([
            'tags' => 'nullable|array',
            'tags.*' => 'required|integer',
            'search' => 'nullable|string'
        ]);

        return Audio::get(
            tags: ($request->get('tags') ?? null),
            search: ($request->get('search') ?? '')
        );
    }
}
