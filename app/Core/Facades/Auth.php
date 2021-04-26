<?php
/*
 * Primary Maintainer: Raymond Chow
 */

namespace App\Core\Facades;

use Illuminate\Support\Facades\Facade;

/**
 * @method static setRequest(\Illuminate\Http\Request $request)
 * @method static check()
 * @method static user(bool $forceRefresh = false, ?array $keys = null)
 * @method static logout()
 * @method static loginUsingId(int $userId)
 *
 * Authentication facade to interface with the globally registered authentication singleton.
 * @see \App\Providers\AppServiceProvider::register() for the instantiation/binding to the service container
 * @see \App\Core\Implementation\TapAuthentication for the actual implementation of authentication
 */
class Auth extends Facade
{
    /**
     * Get the registered name of the component.
     *
     * @return string
     */
    protected static function getFacadeAccessor() { return 'tap-authentication'; }
}
