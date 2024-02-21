@extends('adminlte::page')

@section('title','Blog')

@section('content_header')
    <h1>Lista de usuarios</h1>
@endsection

@section('content')
    @livewire('admin.users-index')
@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@endsection

@section('js')
    <script> console.log('hi') </script>
@endsection