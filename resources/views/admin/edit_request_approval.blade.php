{{--
    Primary Maintainer: Alex Viola

    HTML which handles edit request approval
 --}}

@extends('layouts.app')

@section('content')
    <div class="container tw-max-w-5xl">
        <form method="post">
            @csrf
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


            <div class="row">
                <div class="container text-center">
                    <p class="lead tw-text-2xl tw-font-bold mt-3"><b><a href="/audio/{{ $audio->id }}">{{ $audio->name }}</a></b></p>
                    <hr class="my-2">
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="jumbotron container p-3 mb-0 mt-0">
                        <p class="lead tw-text-3xl tw-font-bold text-center"><b>Old Text</b></p>
                    </div>
                    <div class="mt-2 mb-2 tw-font-serif tw-text-lg pr-0">
                        <div class="form-group">
                            <textarea id="transcript_old_text" class="form-control bg-light p-4 tw-text-black mb-0 bg-secondary text-muted" rows="23" style="resize: none; min-height: 500px; max-height: calc(100vh - 150px); overflow-y: auto" readonly>{!! e($audio->transcript_text) !!}</textarea>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="jumbotron container p-3 mb-0 mt-0">
                        <p class="lead tw-text-3xl tw-font-bold text-center"><b>Proposed Text</b></p>
                    </div>

                    <div class="mt-2 mb-2 tw-font-serif tw-text-lg pr-0">
                        <div class="form-group">
                            <textarea id="transcript_new_text" name="transcript_edit_text" class="form-control bg-light p-4 tw-text-black mb-0" style="resize: none; min-height: 500px; max-height: calc(100vh - 150px); overflow-y: auto" rows="23" readonly>{{ old('transcript_new_text', $audio->transcript_text) }}</textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="container px-3 py-2">
                        <button class="btn btn-lg btn-danger btn-block mt-0 mb-2" type="submit">Deny Request</button>
                    </div>
                </div>
                <div class="col">
                    <div class="container px-3 py-2">
                        <button class="btn btn-lg btn-success btn-block mt-0 mb-2" type="submit">Approve Request</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection
