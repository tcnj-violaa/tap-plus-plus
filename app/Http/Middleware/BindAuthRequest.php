<?php
/**
 * Primary Maintainer: Raymond Chow
 */

namespace App\Http\Middleware;

use App\Core\Facades\Auth;
use Closure;
use Illuminate\Http\Request;

/**
 * Request binding middleware for the custom Auth facade.
 * @package App\Http\Middleware
 */
class BindAuthRequest
{
    /**
     * Bind the request object to the Auth singleton.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        Auth::setRequest($request);

        return $next($request);
    }
}
