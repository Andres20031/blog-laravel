@extends('adminlte::page')

@section('title', 'Blog')

@section('content_header')
    @can('admin.users.index')
        <a class="btn btn-primary btn-sm float-right" href="{{ route('admin.tags.create') }}">Nueva Etiqueta</a>
    @endcan
    <h1>Listar las etiquetas</h1>
@endsection

@section('content')


    <div class="card-body">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th colspan="2"></th>
                </tr>
            </thead>

            <tbody>
                @foreach ($tags as $tag)
                    <tr>
                        <td>{{ $tag->id }}</td>
                        <td>{{ $tag->name }}</td>
                        <td width="10px">
                            @can('admin.users.index')
                            <a class="btn btn-primary btn-sm" href="{{ route('admin.tags.edit', $tag) }}">Editar</a>
                            @endcan
                            
                        </td>
                        <td width="10px">
                            @can('admin.users.index')
                            <form action="{{ route('admin.tags.destroy', $tag) }}" method="POST">
                                @csrf
                                @method('delete')
                                <button type="submit" class="btn btn-danger btn-sm">eliminar</button>
                            </form>
                            @endcan
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>

    </div>
@stop
