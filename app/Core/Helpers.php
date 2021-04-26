<?php

namespace App\Core;

/**
 * Static helper functions
 * @package App\Core
 */
class Helpers
{
    /**
     * @param object|array $data Data to filter keys from
     * @param array|null $keys Approved keys
     * @return object New object with only approved keys
     */
    public static function restrictKeys(object|array $data, ?array $keys = null): object
    {
        if ($keys === null || count($keys) < 1) {
            return $data;
        }

        return (object) array_intersect_key((array) $data, array_flip($keys));
    }
}
