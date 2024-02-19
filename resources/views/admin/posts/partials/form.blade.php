<div class="form-group">
    {!! Form::label('name', 'Nombre') !!}
    {!! Form::text('name', null, [
        'class' => 'form-control',
        'placeholder' => 'Ingrese el nombre de la categoria',
        'id' => 'name',
    ]) !!}

    @error('name')
        <span class="text-danger">{{ $message }}</span>
    @enderror
</div>
<div class="form-group">
    {!! Form::label('Slug', 'Slug') !!}
    {!! Form::text('slug', null, [
        'class' => 'form-control',
        'placeholder' => 'Ingrese el nombre del slug',
        'id' => 'slug',
        'readonly',
    ]) !!}
    @error('slug')
        <span class="text-danger">{{ $message }}</span>
    @enderror
</div>
<div class="form-group">
    {!! Form::label('category_id', 'Categoria') !!}
    {!! Form::select('category_id', $categories, null, ['class' => 'form-control']) !!}
    @error('category:id')
        <span class="text-danger">{{ $message }}</span>
    @enderror
</div>
<div class="form-group">
    <p class="font-weight-bold">Etiquetas</p>
    @foreach ($tags as $tag)
        <label for="" class="mr-2">
            {!! Form::checkbox('tags[]', $tag->id, null) !!}
            {{ $tag->name }}
        </label>
    @endforeach
    @error('tags')
        <span class="text-danger">{{ $message }}</span>
    @enderror
</div>
<div class="form-group">
    <p class="font-weight-bold">Estado</p>
    <label for="">
        {!! Form::radio('status', 2, true) !!}
        Publicado
    </label>
    <label for="">
        {!! Form::radio('status', 1, false) !!}
        Borrador
    </label>

    @error('status')
        <span class="text-danger">{{ $message }}</span>
    @enderror
</div>

<div class="row mb-3">
    <div class="col">
        <div class="image-wrapper">
            @isset ($post->image)
                <img id="picture" src="{{Storage::url($post->image->url)}}" alt="">
            @else 
                <img id="picture" src="" alt="">
            @endisset
           
        </div>

    </div>
    <div class="col">
        {!! Form::label('file', 'Imagen que se mostrará en el post') !!}
        {!! Form::file('file', ['class' => 'form-control-file', 'id' => 'file-input']) !!}

        @error('file')
            <span class="text-danger">{{ $message }}</span>
        @enderror
        <div>
            <p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos laboriosam accusantium debitis obcaecati
                sint corporis. Accusamus, deserunt laudantium tempora repellendus amet quibusdam nulla quidem facilis
                excepturi necessitatibus quis non. Ea?</p>
        </div>
    </div>

</div>

<div class="form-group">
    {!! Form::label('extract', 'Extracto:') !!}
    {!! Form::textarea('extract', null, ['class' => 'form-control']) !!}
    @error('extract')
        <span class="text-danger">{{ $message }}</span>
    @enderror
</div>

<div class="form-group">
    {!! Form::label('body', 'Cuerpo del post:') !!}
    {!! Form::textarea('body', null, ['class' => 'form-control']) !!}
    @error('body')
        <span class="text-danger">{{ $message }}</span>
    @enderror
</div>
