{{--
    Primary Maintainer: Alex Benasutti

    Displays and passes request and audio info to the Vue component (components/user/UserEditRequestList.vue)
--}}
@extends('layouts.app')

@section('content')
    <div class="container tw-max-w-5xl">
        <div id="user-edit-rq-component" data-requests="{{ json_encode($requests) }}" data-audio="{{ json_encode($audio) }}">
            <div class="container py-4">
                <strong>Please wait while the edit requests are loading...</strong>
            </div>
        </div>
    </div>
@endsection
