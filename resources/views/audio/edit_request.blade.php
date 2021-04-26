@extends('layouts.app')
@section('content')
    <div class="container tw-max-w-4xl">
        <div class="form-group text-center mt-5">
            <select class="form-control bg-light p-4 tw-text-black mb-0
                {!! nl2br(e($audio->transcript_text)) !!}
            </select>
        </div>
    </div>
@endsection
