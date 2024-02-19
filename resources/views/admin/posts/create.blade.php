@extends('adminlte::page')

@section('title', 'Blog')

@section('content_header')
    <h1>Crear Nuevo Post</h1>
@endsection

@section('content')
    @if (session('info'))
        <div class="alert alert-success">
            <strong>{{ session('info') }}</strong>
        </div>
    @endif
    <div class="card">
        <div class="card-body">
            {!! Form::open(['route' => 'admin.posts.store', 'autocomplete' => 'off', 'files' =>true ]) !!}

            {!! Form::hidden('user_id', auth()->user()->id) !!}


             @include('admin.posts.partials.form')

            {!! Form::submit('Crear Post', ['class' => 'btn btn-primary']) !!}

            {!! Form::close() !!}
        </div>
    </div>
@stop

@section('css')
    <style>
        .image-wrapper {
            position: relative;
            padding-bottom: 56.25%;
            /* Reduje el padding-bottom para reducir la separación */
            margin-bottom: 0;
        }

        .image-wrapper img {
            position: absolute;
            object-fit: cover;
            margin-bottom: 0;
            width: 100%;
            height: 100%;
        }
    </style>
@stop
@section('js')
    <script src="{{ asset('vendor/jQuery-Plugin-stringToSlug-1.3/jquery.stringToSlug.min.js') }}"></script>

    <script>
        $(document).ready(function() {
            $("#name").stringToSlug({
                setEvents: 'keyup keydown blur',
                getPut: '#slug',
                space: '-'
            });
        });

        $(document).ready(function() {
        $('#file-input').change(function() {
            var input = this;
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#picture').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        });
    });
    </script>
@endsection
