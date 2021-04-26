@extends('layouts.app')

@section('content')
    <div class="container tw-max-w-5xl">
        <form method="post">
            @csrf

            <div class="row">
                <div class="container text-center">
                    <p class="lead tw-text-2xl tw-font-bold mt-3"><b><a href="/audio/{{ $audio->id }}">{{ $audio->name }}</a></b></p>
                    <hr class="my-2">
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="jumbotron container p-3 mb-0 mt-0">
                        <p class="lead tw-text-3xl tw-font-bold text-center"><b>Original</b></p>
                    </div>
                    <div class="mt-2 mb-2 tw-font-serif tw-text-lg pr-0">
                        <div class="form-group">
                            <textarea id="transcriptOrigText" class="form-control bg-light p-4 tw-text-black mb-0 bg-secondary text-muted" rows="23" style="resize: none; min-height: 500px; max-height: calc(100vh - 150px); overflow-y: auto" readonly>{!! e($audio->transcript_text) !!}</textarea>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="jumbotron container p-3 mb-0 mt-0">
                        <p class="lead tw-text-3xl tw-font-bold text-center"><b>New (Edit Here)</b></p>
                    </div>

                    <div class="mt-2 mb-2 tw-font-serif tw-text-lg pr-0">
                        <div class="form-group">
                            <textarea id="transcript_edit_text" name="transcript_edit_text" class="form-control bg-light p-4 tw-text-black mb-0" style="resize: none; min-height: 500px; max-height: calc(100vh - 150px); overflow-y: auto" rows="23">{{ old('transcript_edit_text', $audio->transcript_text) }}</textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="container px-3 py-2">
                    <input type="text" id="edit_comment" name="edit_comment" class="form-control tw-rounded mt-0 mb-0" placeholder="Enter a comment (optional)">
                </div>
            </div>
            <div class="row">
                <div class="container px-3 py-2">
                    <button class="btn btn-lg btn-primary btn-block mt-0 mb-2" type="submit">Submit Request</button>
                </div>
            </div>
        </form>
    </div>
@endsection
