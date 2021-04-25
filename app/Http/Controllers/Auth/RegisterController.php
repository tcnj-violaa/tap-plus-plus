<?php

/*
Primary Maintainer: Alex Viola
*/

namespace App\Http\Controllers\Auth;

use App\Core\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;
use Throwable;

/*
 * Registration logic
 */
class RegisterController extends Controller
{
    private $redirectUrl = '/';

    /**
     * Try to register the user.
     *
     * @param Request $request
     * @return object An object with a success key and a possible user id
     */
    private function tryRegister(Request $request): object
    {
        try {
            return DB::transaction(function () use ($request) {
                $name = $request->get('name');
                $email = $request->get('email');
                $pass = $request->get('password');

                // hash the password
                $pass_hash = Hash::make($pass);

                // update the db with new user
                DB::insert('INSERT INTO USERS (name, email, password_hash) VALUES (?, ?, ?)', [$name, $email, $pass_hash]);

                return (object) [
                    'success' => true,
                    'id' => DB::getPdo()->lastInsertId()
                ];
            });
        }
        catch (Throwable $throwable) {
            Log::error($throwable);
            return (object) [
                'success' => false
            ];
        }
    }

    /**
     * Show the registration view.
     *
     * @param Request $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function get(Request $request)
    {
        if (Auth::check()) {
            return redirect($this->redirectUrl);
        }

        return view('auth.register');
    }

    /**
     * Handle registration requests.
     *
     * @param Request $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function post(Request $request)
    {
        $request->validate([
            'email' => 'required|string|max:128|email|unique:users',
            'password' => 'required|string|min:6',
            'name' => 'required|string|max:100'
        ]);

        $result = $this->tryRegister($request);
        if ($result->success) {
            Auth::loginUsingId($result->id);
            flash("You have successfully registered.", "success");
            return redirect($this->redirectUrl);
        } else {
            return back()->withInput($request->except(['password']))
                ->with('error', "An unknown error occurred during registration.");
        }
    }
}
