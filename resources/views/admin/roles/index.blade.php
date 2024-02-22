@extends('adminlte::page')

@section('title','Blog')

@section('content_header')
    <a class="btn btn-primary btn-sm float-right" href="{{route('admin.roles.create')}}" >Agregar Role</a>
    <h1>LIstar Roles</h1>
@endsection

@section('content')
    <div class="card">
        <div class="card-body">
            <table class="table table-striped">
                <thead>
                    <tbody>
                        <tr>
                            <th>ID</th>
                            <th>Role</th>
                            <th colspan="2"></th>
                        </tr>
                    </tbody>
                </thead>
                <tbody>
                    @foreach ($roles as $role)
                        <tr>
                            <td>{{$role->id}}</td>
                            <td>{{$role->name}}</td>
                            <td width = "10px">
                                <a href="{{route('admin.roles.edit', $role)}}" class="btn btn-sm btn-primary">Editar</a>
                            </td>
                            <td width = "10px">
                                <form action="{{route('admin.roles.destroy', $role)}}" method="POST">
                                    @method('DELETE')
                                    @csrf   
                                    <button type="submit" class="btn btn-sm btn-danger">Eliminar</button>
                                </form> 
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@stop
