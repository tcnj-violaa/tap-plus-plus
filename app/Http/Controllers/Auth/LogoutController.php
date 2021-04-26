<?php
/**
 * Primary Maintainer: Raymond Chow
 */

namespace App\Http\Controllers\Auth;

use App\Core\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

/**
 * Log out logic
 * @package App\Http\Controllers\Auth
 */
class LogoutController extends Controller
{
    /**
     * Calls the log out function upon a POST request.
     *
     * @return array
     */
    public function post()
    {
        Auth::logout();

        return [
            'success' => true
        ];
    }
}
