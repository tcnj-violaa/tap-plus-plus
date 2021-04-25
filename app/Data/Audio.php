<?php
/**
 * Primary Maintainer: Raymond Chow
 */

namespace App\Data;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

/**
 * Audio query builder
 * @package App\Data
 */
class Audio
{
    /**
     * Builds a query to obtain a list of audio in the database
     *
     * @param int $page Optional current page count
     * @param array|null $tags Optional array of tag IDs to search for
     * @param string $search Optional search query string
     * @return array of audio objects
     */
    public static function get(int $page = 1, ?array $tags = null, string $search = '')
    {
        // TODO: pagination and more columns to search from
        // DB::enableQueryLog();

        $query = "SELECT * FROM audio\n";
        $args = [];

        // Keeps track of whether a WHERE clause has already been added or not
        $alreadyHasWhere = false;

        // Handle audio tags, only if there are tag IDs
        if ($tags !== null && count($tags) > 0) {
            // Prevent duplicate tag IDs in the request from causing problems
            $tagIds = collect($tags)->unique();

            $tagIdTemplate = str_repeat('?,', $tagIds->count() - 1) . '?';
            $audioIds = collect(
                DB::select("SELECT audio.id FROM audio
                    LEFT JOIN audio_tag ON audio_tag.audio_id = audio.id
                    WHERE audio_tag.tag_id IN ($tagIdTemplate)
                    GROUP BY audio.id
                    HAVING COUNT(tag_id) = ?",
                    array_merge($tagIds->all(), [$tagIds->count()])
                )
            )->pluck('id');

            if (count($audioIds) > 0) {
                $audioIdTemplate = str_repeat('?,', count($audioIds) - 1) . '?';
                $query .= "WHERE id IN ($audioIdTemplate)\n";
                foreach ($audioIds as $id) {
                    $args[] = $id;
                }
                $alreadyHasWhere = true;
            } else {
                return [];
            }
        }

        // TODO: more search areas
        if (strlen($search) > 0) {
            $query .= ($alreadyHasWhere ? 'AND ' : 'WHERE ');
            $query .= "name ILIKE ?\n";

            $args[] = '%' . $search . '%';
        }

        $results = DB::select($query, $args);

        // Log::info(DB::getQueryLog());

        return $results;
    }
}
