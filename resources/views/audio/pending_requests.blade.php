@extends('layouts.app')

@section('content')
    <div class="container tw-max-w-5xl">
        <div id="user-edit-rq-component" data-requests="{{ json_encode($requests) }}" data-audio="{{ json_encode($audio) }}">
            <div class="container">
                <strong>Please wait while the edit requests are loading...</strong>
            </div>
        </div>
    </div>
@endsection
