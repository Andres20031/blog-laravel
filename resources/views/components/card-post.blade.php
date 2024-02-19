@props(['post'])

<article class="mb-5 bg-white shadow-lg rounded-lg">

    @if($post->image)
     <img class="w-full h-80 object-cover object-center mt-4 rounded-lg" src="{{ Storage::url($post->image->url) }}" alt="">
    @else
    <img class="w-full h-80 object-cover object-center mt-4 rounded-lg" src="https://cdn.pixabay.com/photo/2024/01/25/23/06/iceberg-8532935_1280.jpg" alt="">
    @endif
    <div class="px-4 py-3">
        <h1 class="font-bold text-xl mb-2">
            <a href="{{ route('posts.show', $post) }}">{{ $post->name }}</a>
        </h1>
        <div class="text-gray-700">
            {{ $post->extract }}
        </div>
    </div>
    <div class="px-6 pt-4 pb-2">
        @foreach ($post->tags as $tag)
             <a href="{{route('posts.tag', $tag)}}" class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm text-gray-700 mr-2 ">{{$tag->name}}</a>
        @endforeach
    </div>
</article>