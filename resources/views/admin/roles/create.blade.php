@extends('adminlte::page')

@section('title','Blog')

@section('content_header')
    <h1>Crear un Rol</h1>
@endsection

@section('content')
    <div class="card">
        <div class="card-body">

            {!! Form::open(['route' => 'admin.roles.store']) !!}
                @include('admin.roles.partials.form')
                {!! Form::submit('Crear Rol', ['class'=> 'btn btn-primary']) !!}
 
            {!! Form::close() !!}
        </div>
    </div>
@stop

