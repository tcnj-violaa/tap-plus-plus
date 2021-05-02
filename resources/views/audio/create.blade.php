{{--
    Primary Maintainer: Alex Benasutti

    Front-end for audio file creation and upload
 --}}

@extends('layouts.app')

@section('content')
    <div class="container tw-max-w-4xl">
        <form method="post" enctype="multipart/form-data">
            @csrf

            <div class="text-center">
                <p class="lead tw-text-3xl tw-font-bold mt-4"><b>Create An Audio File</b></p>
                <hr class="my-2">
            </div>

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
                <div class="col-md-5">
                    <div class="mt-4">
                        <section>
                            <div class="form-group">
                                <label for="name" class="tw-font-bold">Audio Name</label>
                                <input type="text" id="name" name="name" class="form-control" placeholder="Name" value="{{ old('name') }}" required autofocus>
                            </div>

                            <div class="form-group">
                                <label for="file" class="tw-font-bold">File Upload (mp3)</label>
                                <input type="file" id="file" name="file" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label for="description" class="tw-font-bold">Description (optional)</label>
                                <input type="text" id="description" name="description" class="form-control" placeholder="Description (optional)" value="{{ old('description') }}" autofocus>
                            </div>

                            <div class="form-group">
                                <label for="audio_date" class="tw-font-bold">Date Recorded (optional)</label>
                                <input type="date" id="audio_date" name="audio_date" class="form-control" value="{{ old('audio_date') }}" autofocus>
                            </div>
                        </section>
                    </div>
                </div>

                <div class="col-md-7">
                    <div class="mt-4">
                        <div class="form-group tw-flex tw-flex-col tw-w-full">
                            <label for="transcript" class="tw-font-bold">Transcript (optional)</label>
                            <textarea id="transcript" name="transcript" class="form-control bg-light p-4 tw-font-serif tw-text-black mb-0 tw-flex-1" rows="9" placeholder="Enter a transcript..." style="resize: none">{{ old('transcript') }}</textarea>
                        </div>
                    </div>
                </div>

                <button class="btn btn-lg btn-primary btn-block mt-3" type="submit">Create Audio File</button>
            </div>
        </form>
    </div>
@endsection

