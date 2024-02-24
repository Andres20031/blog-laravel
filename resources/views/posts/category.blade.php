<x-app-layout>
    <div class="max-w-5xl mx-auto px-2 sm:px-4 lg:px-8 py-8 grid grid-cols-1 md:grid-cols-3 gap-8">
        <hr>
        <h1 class="uppercase text-center mx-auto text-4xl font-bold">{{ $category->name }}</h1>

        <hr>

        @foreach ($posts as $post)
            <x-card-post :post="$post"/>
        @endforeach

        <div class="mt-3">
            {{ $posts->links() }}
        </div>
    </div>
</x-app-layout>
