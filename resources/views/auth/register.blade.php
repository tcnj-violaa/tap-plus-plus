{{--
    Primary Maintainer: Alex Viola

    HTML which displays the user registration page
--}}

@extends('layouts.app')

@section('content')
    <div class="container text-center tw-max-w-xl">
        <form method="post">
            @csrf

            <img class="mb-3 mt-5 mx-auto tw-w-32 md:tw-w-48" src="/img/Updated-Trentoniana-Logo.png">
            <h1 class="h3 mb-3 font-weight-normal">Trentoniana Oral Histories Archive</h1>
            <h3 class="h4 mb-3 font-weight-normal">Register</h3>

            @if (session('error'))
                <div class="alert alert-danger">
                    {{ session('error') }}
                </div>
            @endif

            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            <div class="form-group mb-0">
                <label for="email" class="sr-only">Email</label>
                <input type="email" id="email" name="email" class="form-control tw-rounded-b-none tw-border-b-0" placeholder="Email" value="{{ old('email') }}" required autofocus>

                <label for="name" class="sr-only">Username</label>
                <input type="text" id="name" name="name" class="form-control tw-rounded-none tw-border-b-0" placeholder="Username" required>

                <label for="password" class="sr-only">Password</label>
                <input type="password" id="password" name="password" class="form-control tw-rounded-t-none" placeholder="Password" required>
            </div>

            {{--<div class="custom-control custom-checkbox text-left my-3">
                <input type="checkbox" class="custom-control-input" id="remember-me" name="remember" value="true">
                <label class="custom-control-label" for="remember-me">Remember me</label>
            </div>--}}

            <button class="btn btn-lg btn-primary btn-block mt-3" type="submit">Register</button>
        </form>
    </div>
@endsection
