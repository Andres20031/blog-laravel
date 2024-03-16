@extends('adminlte::page')

@section('title','Blog')

@section('content_header')
     @can('admin.posts.create')
     <a class="btn btn-primary btn-sm float-right" href="{{route('admin.posts.create')}}">Nuevo Post</a>
     @endcan
    <h1>Listado de post</h1>
@endsection

@section('content')
    @livewire('admin.posts-index')
@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@endsection

@section('js')
    <script> console.log('hi') </script>
@endsection