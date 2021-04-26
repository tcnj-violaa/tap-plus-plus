{{--
    Primary Maintainer: Raymond Chow

    Loads the home component from the Vue frontend.
--}}

@extends('layouts.app')

@section('content')
    <div class="py-4">
        <div id="home-component" data-filters="{{ json_encode($filters) }}" data-audio="{{ json_encode($audio) }}">
            <div class="container">
                <strong>Please wait while the website is loading...</strong>
            </div>
        </div>
    </div>
@endsection
