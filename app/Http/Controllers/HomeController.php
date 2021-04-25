<?php

/*
 * Primary Maintainer: Raymond Chow
 */

namespace App\Http\Controllers;

use App\Data\Audio;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Get the currently selected filters
     *
     * @return array
     */
    private function getFilters()
    {
        $filterData = DB::select("SELECT * FROM filters");

        $filters = [];
        foreach ($filterData as $filter) {
            if (! array_key_exists($filter->category_name, $filters)) {
                $filters[$filter->category_name] = [];
            }

            $filters[$filter->category_name][] = (object) [
                'id' => $filter->tag_id,
                'name' => $filter->tag_name
            ];
        }

        return $filters;
    }

    /**
     * Get the view of audio files applied to filters
     *
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function get()
    {
        $audio = Audio::get();
        $filters = $this->getFilters();

        return view('home', compact(['filters', 'audio']));
    }
}
