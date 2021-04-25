<?php
/*
 * Primary Maintainer: Alex Benasutti
 */

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Core\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

/**
 * User login controller
 *
 * @package App\Http\Controllers\Auth
 */
class LoginController extends Controller
{
    private $redirectUrl = '/';

    /**
     * User authentication with Auth
     *
     * @param Request $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function get(Request $request)
    {
        if (Auth::check()) {
            return redirect($this->redirectUrl);
        }

        return view('auth.login');
    }

    /**
     * Attempt to the login the user based on the credential information
     *
     * @param Request $request
     * @return bool was the login successful
     */
    private function tryLogin(Request $request): bool
    {
        return DB::transaction(function () use ($request) {
            $email = $request->get('email');
            $pass = $request->get('password');
            $result = DB::select('SELECT * FROM users WHERE email = ?', [$email]);
            if (count($result) < 1) {
                dd($result);
                // incorrect email
                return false;
            }

            $user = (object) $result[0];
            if (! Hash::check($pass, $user->password_hash)) {
                // incorrect password
                return false;
            }

            // login success
            Auth::loginUsingId($user->id);
            return true;
        });
    }

    /**
     * post to redirect the user to the home page
     *
     * @param Request $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function post(Request $request)
    {
        $request->validate([
            'email' => 'required|string|email',
            'password' => 'required|string'
        ]);

        // see if user with that email if thats correct then use password and check against that and if that's correct then log them in

        if (! $this->tryLogin($request)) {
            return back()
                ->with("error", "The provided credentials were incorrect.")
                ->withInput(['email' => $request->get('email')]);
        } else {
            flash("You have been logged in.", 'success');
            return redirect('/');
        }
    }
}
