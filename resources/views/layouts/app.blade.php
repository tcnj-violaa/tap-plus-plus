{{--

    Primary Maintainer: Raymond Chow

    Loads website and website navbar
--}}

<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>{{ config('app.name') }}</title>
        <link rel="stylesheet" href="{{ mix('/css/app.css') }}">
        <script src="{{ mix('/js/app.js') }}" defer></script>
    </head>
    <body>
        <div id="navbar" data-json="{{ json_encode([
            'user' => Auth::check() ? Auth::user(keys: ['id', 'name', 'user_type']) : null
        ]) }}"></div>

        @yield('content')

        @yield('footer')
    </body>
</html>
