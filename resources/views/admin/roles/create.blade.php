@extends('adminlte::page')

@section('title','Blog')

@section('content_header')
    <h1>Crear un Rol</h1>
@endsection

@section('content')
    <div class="card">
        <div class="card-body">

            {!! Form::open(['route' => 'admin.roles.store']) !!}
                <div class="form-group">
                    {!! Form::label('name', 'Nombre') !!}
                    {!! Form::text('name', null, ['class' => 'form-control', 'placeholder' => 'Ingrese el nombre del rol']) !!}
                </div>

                @error('name')
                <strong class="text-danger">{{$message}}</strong>
                    
                @enderror

                <h2 class="h3"> Lista de permisos</h2>
                @foreach ($permissions as $permission)
                    <div>
                        <label>
                            {!! Form::checkbox('permission[]', $permission->id, null,  ['class'=> 'mr-1']) !!}
                            {{$permission->description}}
                        </label>
                    </div> 
                @endforeach
                {!! Form::submit('Crear Rol', ['class'=> 'btn btn-primary']) !!}
 
            {!! Form::close() !!}
        </div>
    </div>
@stop

