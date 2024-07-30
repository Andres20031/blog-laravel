@extends('layouts.app')

@section('title', 'Home')

@section('content')

<div class="container py-4">
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
        @foreach ($data['results'] as $character)
            <div class="col">
                <div class="card h-100 d-flex flex-column">
                    <div class="card-body d-flex flex-column">
                        <div>
                            <span class="badge bg-danger">{{ $character['species'] }}</span>
                            <span class="badge bg-primary">{{ $character['status'] }}</span>
                        </div>
                        <h5 class="card-title mt-2">
                            {{ $character['name'] }}
                        </h5>
                        <p class="card-text">Gender: {{ $character['gender'] }}</p>
                        <p class="card-text">Type: {{ $character['type'] }}</p>
                        <p class="card-text">Origin: {{ $character['origin']['name'] }}</p>
                    </div>
                </div>  
            </div>
        @endforeach
    </div>
</div>

@endsection
