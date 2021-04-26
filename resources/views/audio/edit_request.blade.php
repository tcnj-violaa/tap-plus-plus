@extends('layouts.app')
@section('content')
    <div class="container tw-max-w-5xl">
        <div class="row">
            <div class="col">
                <div class="jumbotron container p-4 mb-0 mt-5">
                    <p class="lead tw-text-3xl tw-font-bold text-center"><b>Original</b></p>
                </div>
                <form>
                    <div class="mt-2 mb-2 tw-font-serif tw-text-lg pr-0">
                        <div class="form-group">
                            <textarea id="transcriptOrigText" class="form-control bg-light p-4 tw-text-black mb-0 bg-secondary text-muted" rows="25" style="resize: none; min-height: 500px; max-height: calc(100vh - 150px); overflow-y: auto" readonly>{!! e($audio->transcript_text) !!}</textarea>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col">
                <div class="jumbotron container p-4 mb-0 mt-5">
                    <p class="lead tw-text-3xl tw-font-bold text-center"><b>New (Edit Here)</b></p>
                </div>
                <form>
                    <div class="mt-2 mb-2 tw-font-serif tw-text-lg pr-0">
                        <div class="form-group">
                            <textarea id="transcriptEditText" class="form-control bg-light p-4 tw-text-black mb-0" style="resize: none; min-height: 500px; max-height: calc(100vh - 150px); overflow-y: auto" rows="25">{!! e($audio->transcript_text) !!}</textarea>
                        </div>
                    </div>
              </form>
            </div>
        </div>
        <div class="row">
            <div class="container p-3">
                <button class="btn btn-lg btn-primary btn-block mt-1 mb-2" type="submit">Submit Request</button>
            </div>
        </div>
    </div>
@endsection
