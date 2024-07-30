@extends('layouts.app')

@section('title', 'Home')

@section('content')

    <div class="container-fluid py-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <hr>
                    <h1 class="text-center text-uppercase mx-auto display-4 font-weight-bold">{{ $category->name }}</h1>
                    <hr>
                </div>
            </div>

            <div class="row">
                @foreach ($posts as $post)
                    <div class="col-md-4">
                        <div class="card mb-4 h-100">
                            @if ($post->image)
                                <img src="{{ Storage::url($post->image->url) }}" class="card-img-top"
                                    alt="{{ $post->name }}">
                            @else
                                <img src="https://cdn.pixabay.com/photo/2024/01/25/23/06/iceberg-8532935_1280.jpg"
                                    class="card-img-top" alt="{{ $post->name }}">
                            @endif
                            <div class="card-body">
                                <h5 class="card-title">{{ $post->name }}</h5>
                                <p class="card-text">{{ $post->extract }}</p>
                                <a href="{{ route('posts.show', $post) }}" class="btn btn-primary">Read more</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>

            <div class="mt-4 d-flex justify-content-center">
                {{ $posts->links('pagination::bootstrap-4') }}
            </div>


            <!-- Texte en français -->
            <div class="mt-4">
                <h2>{{ __('messages.category_management') }}</h2>
                <p>{{ __('messages.welcome_message') }}</p>

                <h3>{{ __('messages.available_actions') }}</h3>
                <ul>
                    <li><strong>{{ __('messages.add_category') }}</strong></li>
                    <li><strong>{{ __('messages.edit_category') }}</strong></li>
                    <li><strong>{{ __('messages.delete_category') }}</strong></li>
                </ul>

                <h3>{{ __('messages.category_list') }}</h3>
                <ul>
                    <li><strong>{{ __('messages.id') }}</strong></li>
                    <li><strong>{{ __('messages.name') }}</strong></li>
                </ul>

                <p>{{ __('messages.manage_categories') }}</p>
            </div>
        </div>


    </div>




@endsection
