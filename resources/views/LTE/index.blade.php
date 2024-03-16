@extends('layouts.app')

@section('title', 'Home')

@section('content')


<div class="container py-4">
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
        @foreach ($posts as $post)
            <div class="col">
                <div class="card h-100 d-flex flex-column">
                    <img src="@if($post->image) {{ Storage::url($post->image->url) }} @else https://cdn.pixabay.com/photo/2024/01/25/23/06/iceberg-8532935_1280.jpg @endif" class="card-img-top" alt="{{ $post->name }}">
                    <div class="card-body d-flex flex-column">
                        <div>
                            @foreach ($post->tags as $tag)
                                <a href="{{route('posts.show', $post)}}" class="btn btn-danger btn-sm">{{ $tag->name }}</a>
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
</div>



@endsection