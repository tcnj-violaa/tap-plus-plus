<?php
/**
 * Primary Maintainer: Raymond Chow
 */

namespace App\Http\Middleware;

use App\Core\Facades\Auth;
use Closure;
use Illuminate\Http\Request;

/**
 * Middleware to require authentication for a route.
 * Modified from Laravel scaffolding code.
 *
 * @package App\Http\Middleware
 */
class Authenticate
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if (! Auth::check()) {
            if ($request->expectsJson()) {
                return response()->json([
                    'status' => 403,
                    'message' => 'Unauthorized.'
                ]);
            } else {
                flash('Authentication is required to perform this action.', 'danger');
                return redirect('/auth/login');
            }
        }

        return $next($request);
    }

    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string|null
     */
    protected function redirectTo($request)
    {
        if (! $request->expectsJson()) {
            return route('login');
        }
    }
}
