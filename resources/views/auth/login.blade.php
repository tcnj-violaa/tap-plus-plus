{{--
    Primary Maintainer: Alex Benasutti

    HTML which displays the login screen
--}}

@extends('layouts.app')

@section('content')
    <div class="container text-center tw-max-w-xl">
        <form method="post">
            @csrf

            <img class="mb-3 mt-5 mx-auto tw-w-32 md:tw-w-48" src="/img/Updated-Trentoniana-Logo.png">
            <h1 class="h3 mb-3 font-weight-normal">Trentoniana Oral Histories Archive</h1>
            <h3 class="h4 mb-3 font-weight-normal">Login</h3>

            @if (session('error'))
                <div class="alert alert-danger">
                    {{ session('error') }}
                </div>
            @endif

            <div class="form-group mb-0">
                <label for="email" class="sr-only">Email</label>
                <input type="email" id="email" name="email" class="form-control tw-rounded-b-none tw-border-b-0" placeholder="Email" value="{{ old('email') }}" required {{ old('email') ? '' : 'autofocus' }}>

                <label for="password" class="sr-only">Password</label>
                <input type="password" id="password" name="password" class="form-control tw-rounded-t-none" placeholder="Password" required {{ old('email') ? 'autofocus' : '' }}>
            </div>

            {{--<div class="custom-control custom-checkbox text-left my-3">
                <input type="checkbox" class="custom-control-input" id="remember-me" name="remember" value="true">
                <label class="custom-control-label" for="remember-me">Remember me</label>
            </div>--}}

            <button class="btn btn-lg btn-primary btn-block mt-3" type="submit">Sign in</button>
        </form>
    </div>
@endsection
