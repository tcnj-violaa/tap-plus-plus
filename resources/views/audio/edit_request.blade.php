@extends('layouts.app')
@section('content')
    <div class="container tw-max-w-4xl">
        <form>
            <div class="mt-5 mb-2 tw-font-serif tw-text-lg pr-0" style="min-height: 500px; max-height: calc(100vh - 150px); overflow-y: auto">
                <div class="form-group text-center mt-5">
                    <textarea id="transcriptEditText" class="form-control bg-light p-4 tw-text-black mb-0">
                        {!! nl2br(e($audio->transcript_text)) !!}
                    </textarea>
                </div>
            </div>
        </form>
    </div>
@endsection
