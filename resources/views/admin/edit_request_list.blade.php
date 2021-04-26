{{--
    Primary Maintainer: Alex Benasutti

    Handles listing of user edit requests per audio file
--}}

@extends('layouts.app')

@section('content')
    <div class="container tw-max-w-5xl">
        <div id="admin-edit-rq-component" data-requests="{{ json_encode($edit_requests) }}">
            <div class="container">
                <strong>Please wait while the edit requests are loading...</strong>
            </div>
        </div>
    </div>
@endsection
