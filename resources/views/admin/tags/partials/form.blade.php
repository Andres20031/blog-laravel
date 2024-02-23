<div class="form-group">
    {!! Form::label('name', 'Nombre:') !!}
    {!! Form::text('name', null, [
        'class' => 'form-control',
        'placeholder' => 'Ingrese el nombre de la etiqueta',
        'id' => 'name',
        'maxlength' => 100
    ]) !!}

    @error('name')
        <span class="text-danger">{{ $message }}</span>
    @enderror
</div>


<div class="form-group">
    {!! Form::label('slug', 'Slug:') !!}
    {!! Form::text('slug', null, [
        'class' => 'form-control',
        'placeholder' => 'Ingrese el slug de la etiqueta',
        'id' => 'slug',
        'readonly',
    ]) !!}

    @error('slug')
        <span class="text-danger">{{ $message }}</span>
    @enderror
</div>

<div class="form-group">

    {!! Form::select('color', $colors, 'red', ['class' => 'form-control', 'style' => 'display: none;', 'id' => 'hiddenColorInput']) !!}
</div> 
