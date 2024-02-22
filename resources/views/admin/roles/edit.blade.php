@extends('adminlte::page')

@section('title', 'Blog')

@section('content_header')
    <h1>Editar Rol</h1>
@endsection

@section('content')
    @if (session('info'))
        <div class="alert alert-success">
            <strong>{{ session('info') }}</strong>
        </div>
    @endif

@stop          
