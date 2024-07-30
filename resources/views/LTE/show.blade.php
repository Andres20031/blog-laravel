@extends('layouts.app')

@section('title', 'Home')

@section('content')
    <div class="container py-5 mx-4">
        <hr>
        <h1 class="text-4xl font-bold text-gray-600">{{ $post->name }}</h1>

        <div class="text-lg text-gray-500 mb-4">
            {{ $post->extract }}
        </div>
        <hr>
        <div class="row">
            <div class="col-md-8">
                <figure class="mb-4">
                    @if ($post->image)
                        <img class="w-100 max-w-lg h-auto object-cover object-center mt-4"
                            style="width: 310px; height: 210px;" src="{{ Storage::url($post->image->url) }}"
                            alt="{{ $post->name }}">
                    @else
                        <img class="w-100 max-w-lg h-auto object-cover object-center mt-4 img-thumbnail"
                            src="https://cdn.pixabay.com/photo/2024/01/25/23/06/iceberg-8532935_1280.jpg" alt="">
                    @endif
                </figure>
                <div class="text-base text-gray-500 mt-4">{{ $post->body }}</div>
                <hr>
                <h1 class="mb-4" style="color: #666; text-align: center;">Comments</h1>
                <form method="POST" action="{{ route('post.comment', ['post' => $post, 'user' => $user]) }}">
                    @csrf
                    <div class="mb-4">
                        <textarea name="comment" rows="5" cols="70" class="form-control" placeholder="Dejanos tu comentario..."></textarea>
                        @error('comment')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-outline-primary">Enviar</button>
                </form>
                <br>
                <hr>
                <br>
                @foreach ($comentarios as $comentario)
                    <div class="comment">
                        <div class="d-flex justify-content-between align-items-start">
                            <div>

                                <h5 class="mt-0"> <img src="{{ $comentario->user->profile_photo_url }}"
                                        class="rounded-circle" alt="{{ $comentario->user->name }}" width="48"
                                        height="48"> {{ $comentario->user->name }}</h5>
                                <p>{!! nl2br(e($comentario->name)) !!}</p>
                            </div>
                            <div class="text-right">
                                <small class="text-muted">
                                    {{ $comentario->created_at->diffForHumans() }}
                                </small>
                            </div>
                        </div>
                        <hr>
                    </div>
                @endforeach
            </div>
            <aside class="col-md-4">
                <h1 class="text-2xl font-bold text-gray-600 mb-4">Mas en {{ $post->category->name }}</h1>
                <ul class="list-unstyled">
                    @foreach ($similares as $similar)
                        <li class="mb-4">
                            @if ($similar->image)
                                <a class="d-flex" href="{{ route('posts.show', $similar) }}">
                                    <img class="img-thumbnail fixed-size-image"
                                        src="{{ Storage::url($similar->image->url) }}" width="250" height="250"
                                        alt="">
                                    <span class="ml-2 text-gray-600">{{ $similar->name }}</span>
                                </a>
                            @else
                                <a class="d-flex" href="{{ route('posts.show', $similar) }}">
                                    <img class="img-thumbnail fixed-size-image"
                                        src="https://cdn.pixabay.com/photo/2024/01/25/23/06/iceberg-8532935_1280.jpg"
                                        alt="">
                                    <span class="ml-2 text-gray-600">{{ $similar->name }}</span>
                                </a>
                            @endif
                        </li> 
                    @endforeach
                </ul>
            </aside>
        </div>
    </div>
@endsection
