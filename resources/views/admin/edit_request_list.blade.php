{{--
    Primary Maintainer: Alex Viola

    Handles listing of user edit requests for all audio files
--}}

@extends('layouts.app')

@section('content')
    <div class="container tw-max-w-5xl">
        <div id="admin-edit-rq-component" data-requests="{{ json_encode($requests) }}">
            <div class="container">
                <strong>Please wait while the edit requests are loading...</strong>
            </div>
        </div>
    </div>
@endsection
