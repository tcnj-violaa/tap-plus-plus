{{--
    Primary Maintainer: Alex Benasutti

    Transcript history
--}}
@extends('layouts.app')

@section('content')
    <div class="container tw-max-w-5xl">
        <div id="ts-history-component" data-history="{{ json_encode($history) }}" data-audio="{{ json_encode($audio) }}">
            <div class="container py-4">
                <strong>Please wait while the transcript history is loading...</strong>
            </div>
        </div>
    </div>
@endsection
