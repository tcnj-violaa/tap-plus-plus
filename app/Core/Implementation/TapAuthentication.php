<?php
/*
 * Primary Maintainer: Raymond Chow
 */

namespace App\Core\Implementation;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

/**
 * Main authentication implementation to be used as a request-level singleton
 * @package App\Core\Implementation
 */
class TapAuthentication
{
    private ?object $user = null;
    private ?Request $request = null;

    // Key for user ID in the session
    private $userIdKey = 'core.user.id';

    /**
     * Set the $request variable
     * Used to modify session data
     *
     * @param Request $request
     */
    public function setRequest(Request $request)
    {
        $this->request = $request;
    }

    /**
     * Checks if the user is logged in
     * @return bool Is the user logged in?
     */
    public function check(): bool
    {
        if ($this->request === null) {
            return false;
        }

        return $this->request->session()->has($this->userIdKey);
    }

    /**
     * @param object $data Data to filter keys
     * @param array|null $keys Approved keys
     * @return object New object with only approved keys
     */
    private function restrictKeys(object $data, ?array $keys = null): object
    {
        if ($keys === null) {
            return $data;
        }

        return (object) array_intersect_key((array) $data, array_flip($keys));
    }

    /**
     * Get the user object if the user is authenticated.
     *
     * @param bool $forceRefresh Force a SELECT query, even if cached
     * @param array|null $keys The columns to return
     * @return object|null User object
     */
    public function user(bool $forceRefresh = false, ?array $keys = null): ?object
    {
        if ($this->request === null) {
            return null;
        }

        if ($this->user !== null && ! $forceRefresh) {
            return $this->restrictKeys($this->user, $keys);
        }

        if (! $this->check()) {
            return null;
        }

        $uid = $this->request->session()->get($this->userIdKey);
        $user = DB::select("SELECT * FROM users WHERE id = ?", [$uid]);
        if (count($user) < 1) {
            $this->logout();
            return null;
        }

        $this->user = (object) $user[0];
        return $this->restrictKeys($this->user, $keys);
    }

    /**
     * Logs the user out by unsetting the user ID session key
     *
     * @return bool Was the request successful?
     */
    public function logout(): bool
    {
        if ($this->request === null) {
            return false;
        }

        if ($this->check()) {
            $this->request->session()->remove($this->userIdKey);
            $this->request->session()->save();
            $this->user = null;

            return true;
        }
        return false;
    }

    /**
     * Logs in a user using an ID.
     *
     * @param int $userId The user's ID
     * @return object|null The newly logged in user
     */
    public function loginUsingId(int $userId): ?object
    {
        if ($this->request === null) {
            return null;
        }

        $this->logout();
        $this->request->session()->put($this->userIdKey, $userId);
        $this->request->session()->save();
        return $this->user(true);
    }
}
