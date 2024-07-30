@extends('layouts.app')

@section('title', 'Inicio')

@section('content')

<div class="container py-4">
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
        @foreach ($posts as $post)
            <div class="col">
                <div class="card h-100 d-flex flex-column">
                    <img src="@if($post->image) {{ Storage::url($post->image->url) }} @else https://cdn.pixabay.com/photo/2024/01/25/23/06/iceberg-8532935_1280.jpg @endif" class="card-img-top img-fluid" style="width: 510px; height: 310px;" alt="{{ $post->name }}">
                    <div class="card-body d-flex flex-column">
                        <div>
                            @foreach ($post->tags as $tag)
                                <a href="{{ route('posts.show', $post) }}" class="btn btn-danger btn-sm">{{ $tag->name }}</a>
                            @endforeach
                        </div>
                        <h5 class="card-title mt-2">
                            <a href="{{ route('posts.show', $post) }}" class="text-dark">{{ $post->name }}</a>
                        </h5>
                    </div>
                </div>  
            </div>
        @endforeach
    </div>
    <div class="mt-4 d-flex justify-content-center">
        {{ $posts->links('pagination::bootstrap-4') }}
    </div>

    <!-- Texto en español -->
    <div class="mt-4">
        <h2>Gestión de Categorías del Blog</h2>
        <p>Bienvenido al panel de administración de categorías del blog. Aquí puedes gestionar todas las categorías disponibles en el sistema.</p>

        <h3>Acciones Disponibles:</h3>
        <ul>
            <li><strong>Agregar Categoría:</strong> Si tienes los permisos necesarios, puedes añadir nuevas categorías al blog. Simplemente haz clic en el botón "Agregar Categoría" en la parte superior derecha.</li>
            <li><strong>Editar Categoría:</strong> Puedes modificar las categorías existentes seleccionando la opción "Editar" junto a la categoría correspondiente. Asegúrate de revisar los detalles antes de guardar los cambios.</li>
            <li><strong>Eliminar Categoría:</strong> Si necesitas eliminar una categoría, selecciona la opción "Eliminar". Ten en cuenta que esta acción es irreversible y se eliminarán todas las entradas asociadas a la categoría.</li>
        </ul>

        <h3>Lista de Categorías:</h3>
        <ul>
            <li><strong>ID:</strong> Identificador único de la categoría.</li>
            <li><strong>Nombre:</strong> Nombre de la categoría.</li>
        </ul>

        <p>Asegúrate de gestionar las categorías de manera eficiente para mantener el contenido del blog organizado y fácil de navegar. Si necesitas ayuda, consulta la documentación o contacta al soporte.</p>
    </div>
</div>

@endsection
