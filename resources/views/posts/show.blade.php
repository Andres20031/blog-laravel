<x-app-layout>
    <div class=" py-8 mx-8">
        <h1 class="text-4xl font-bold text-gray-600">{{$post->name}}</h1>

        <div class="text-lg text-gray-500 mb-2">
            {{$post->extract}}
        </div>
        <div class="my-4">
            <div class="grid grid-cols-3 gap-6 ">
               
             
                <div class="col-span-2 ">
                    <figure>
                        <img class="w-full h-80 object-cover object-center mt-4" src="{{Storage::url($post->image->url)}}" alt="">
                    </figure>
                    <div class="text-base text-gray-500 mt-4">{{$post->body}}</div>
                </div>

                <aside>
                    <h1 class="text-2xl font-bold text-gray-600 mb-4">Mas en {{$post->category->name}}</h1>
                    <ul>
                        @foreach ($similares as $similar)
                        <li>
                            <a class="flex mb-4" href="{{route('posts.show',$similar)}}">
                                <img class="max-w-36 max-h-20 object-center" src="{{ Storage::url($similar->image->url) }}" alt="">

                            <span class="ml-2 text-gray-600">{{$similar->name}}</span></a>
                           
                        </li>
                        
                        @endforeach
                    </ul>
                </aside>
            </div>
        </div>
    </div>
</x-app-layout>
