{{--
    Primary Maintainer: Alex Benasutti

    HTML which displays the audio file description, upload and record information, as well as transcript data
--}}

@extends('layouts.app')

@section('content')
    <div class="container tw-max-w-4xl">
        <div class="row">
            <div class="col-md-5">
                <div class="text-center mt-5">
                    <section class="text-center">
                        <div class="jumbotron container p-4 mb-0">
                            <p class="lead tw-text-3xl tw-font-bold"><b>{{ $audio->name }}</b></p>
                            <hr class="my-2">
                            <p class="display-5 tw-text-2m">
                                <strong>Recorded:</strong>
                                @if ($audio->audio_date)
                                    {{ \Carbon\Carbon::parse($audio->audio_date)->toFormattedDateString() }}
                                @else
                                    <i>Unknown</i>
                                @endif
                            </p>
                            <p class="display-5 tw-text-2m">
                                <strong>Uploaded:</strong>
                                {{ \Carbon\Carbon::parse($audio->upload_date)->toFormattedDateString() }}
                            </p>
                        </div>
                        <audio class="tw-w-full tw-rounded-md my-4" controls>
                            <source src="{{ url('/audio/' . $audio->id . '.mp3') }}" type="audio/mp3">
                        </audio>
                    </section>
                    <div class="jumbotron p-4 bg-light text-center mb-4">
                        <div class="container">
                            <h5 class="lead display-5">Description</h5>
                            <hr class="my-2">
                            <p>{{ $audio->description }}</p>
                        </div>
                    </div>
                    @if ($audio->transcript_text)
                        <div class="jumbotron p-4 bg-light text-center">
                            <div class="container">
                                <p class="mb-2">See an issue in the transcript? Propose a transcript edit!</p>
                                <a href="/audio/{{ $audio->id }}/request-edit" class="btn btn-outline-dark">Request Edit</a>
                            </div>
                        </div>
                    @endif
                </div>
            </div>
            <div class="col-md-7 mt-5 mb-2 tw-font-serif tw-text-lg pr-0" style="min-height: 500px; max-height: calc(100vh - 150px); overflow-y: auto">
                <div class="jumbotron bg-light p-4 tw-text-black mb-0">
                    @if ($audio->transcript_text)
                        {!! nl2br(e($audio->transcript_text)) !!}
                    @else
                        There was no transcript created for this audio file.
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection

@section('footer')
    <script>

    </script>
@endsection
