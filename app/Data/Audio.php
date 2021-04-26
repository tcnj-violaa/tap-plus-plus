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
    const PER_PAGE = 20;

    /**
     * Builds a query to obtain a list of audio in the database
     *
     * @param int $page Optional current page count
     * @param int $perPage Optional count per page, if not using the static PER_PAGE variable
     * @param array|null $tags Optional array of tag IDs to search for
     * @param string $search Optional search query string
     * @return array of audio objects
     */
    public static function get(int $page = 1, int $perPage = -1, ?array $tags = null, string $search = '')
    {
        // TODO: more columns to search from
        DB::enableQueryLog();

        if ($perPage === -1) {
            // PHP doesn't support static this in the declaration
            $perPage = static::PER_PAGE;
        }

        $filterQuery = "";
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
                $filterQuery .= "WHERE id IN ($audioIdTemplate)\n";
                foreach ($audioIds as $id) {
                    $args[] = $id;
                }
                $alreadyHasWhere = true;
            } else {
                return [
                    'page' => 0,
                    'total_pages' => 0,
                    'total_results' => 0,
                    'data' => []
                ];
            }
        }

        // TODO: more search areas
        if (strlen($search) > 0) {
            $filterQuery .= ($alreadyHasWhere ? 'AND ' : 'WHERE ');
            $filterQuery .= "name ILIKE ?\n";

            $args[] = '%' . $search . '%';
        }

        // Get the count
        $count = DB::selectOne("SELECT COUNT(*) AS count FROM audio\n" . $filterQuery, $args)->count;

        // Pagination logic
        $resultQuery = "SELECT * FROM results\n" . $filterQuery;
        $resultQuery .= 'LIMIT ? OFFSET ?';
        $args[] = $perPage;
        $args[] = ($page - 1) * $perPage;

        // Get the results
        $results = DB::select($resultQuery, $args);

        return [
            'page' => $page,
            'total_pages' => ceil($count / Audio::PER_PAGE),
            'total_results' => $count,
            'data' => $results
        ];
    }
}
