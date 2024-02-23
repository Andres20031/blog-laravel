<x-app-layout>
    <style>
        .comment {
            margin-bottom: 20px;
            padding: 10px;
            background-color: #f9f9f9;
            border-radius: 4px;
        }

        .user-info {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }

        .user-info p,
        .user-info span {
            margin: 0;
        }

        .user-info p {
            font-weight: bold;
        }

        .comment p {
            margin: 0;
            font-size: 16px;
        }

        .comment span {
            color: #888;
            font-size: 12px;
        }

        .custom-btn {
            background-color: #007BFF;
            /* Azul Bootstrap por defecto */
            color: #fff;
            /* Texto blanco */
            border-radius: 20px;
            /* Ajusta el valor según el radio de redondez que prefieras */
            padding: 6px 15px;
            /* Ajusta el relleno según tus preferencias */
            /* Puedes ajustar otros estilos según tus preferencias */
            margin-bottom: 5px;
            margin-top: 5px;
        }

        .custom-btn:hover {
            background-color: #0056b3;
            /* Cambia el color al pasar el ratón sobre el botón */
        }
    </style>

    <div class=" py-8 mx-8">
        <h1 class="text-4xl font-bold text-gray-600">{{ $post->name }}</h1>

        <div class="text-lg text-gray-500 mb-2">
            {{ $post->extract }}
        </div>
        <div class="my-4">
            <div class="grid grid-cols-3 gap-6 ">


                <div class="col-span-2 ">
                    <figure>
                        @if ($post->image)
                            <img class="w-full h-80 object-cover object-center mt-4"
                                src="{{ Storage::url($post->image->url) }}" alt="">
                        @else
                            <img class="w-full h-80 object-cover object-center mt-4"
                                src="https://cdn.pixabay.com/photo/2024/01/25/23/06/iceberg-8532935_1280.jpg"
                                alt="">
                        @endif

                    </figure>
                    <div class="text-base text-gray-500 mt-4">{{ $post->body }}</div>
                    <br>
                    <br>
                    <hr>

                    <h1 style="color: #666; text-align: center;">Comments</h1>
                    {!! Form::open(['route' => ['post.comment', 'post' => $post, 'user' => $user]]) !!}
                    {!! Form::textarea('comment', null, ['rows' => 5, 'cols' => 70, 'placeholder' => 'Dejanos tu comentario...']) !!}
                 
                    @error('comment')
                    <span class="text-danger">{{ $message }}</span>
                    @enderror
                   <br>
                    {!! Form::submit('Enviar', ['class' => 'btn custom-btn']) !!}

                    {!! Form::close() !!}

                    <hr>

                    @foreach ($comentarios as $comentario)
                        <div class="comment">
                            <div class="user-info">
                                <span>{{ $comentario->user->name }} </span>
                                <span>Fecha de publicacion: {{ $comentario->created_at }}</span>

                            </div>
                            <hr>
                            <p>{!! nl2br(e($comentario->name)) !!}</p>
                        </div>
                    @endforeach
                </div>

                <aside>
                    <h1 class="text-2xl font-bold text-gray-600 mb-4">Mas en {{ $post->category->name }}</h1>
                    <ul>
                        @foreach ($similares as $similar)
                            <li>
                                @if ($similar->image)
                                    <a class="flex mb-4" href="{{ route('posts.show', $similar) }}">
                                        <img class="max-w-36 max-h-20 object-center"
                                            src="{{ Storage::url($similar->image->url) }}" alt="">

                                        <span class="ml-2 text-gray-600">{{ $similar->name }}</span></a>
                                @else
                                    <a class="flex mb-4" href="{{ route('posts.show', $similar) }}">
                                        <img class="max-w-36 max-h-20 object-center"
                                            src="https://cdn.pixabay.com/photo/2024/01/25/23/06/iceberg-8532935_1280.jpg"
                                            alt="">

                                        <span class="ml-2 text-gray-600">{{ $similar->name }}</span></a>
                                @endif


                            </li>
                        @endforeach
                    </ul>

                </aside>
                <hr>


            </div>
        </div>
    </div>
</x-app-layout>
