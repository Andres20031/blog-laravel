<div class="card">
   {{$search}}
    <div class="card-header">
        <input wire:model.debounce.100ms="search" class="form-control" placeholder="Ingrese el nombre de un post" type="text">

    </div>
    <div class="card-body">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>name</th>
                    <th colspan="2"></th>
                </tr>
            </thead>

            <tbody>
                @foreach ($posts as $post)
                    <tr>
                        <td>{{$post->id}}</td>
                        <td>{{$post->name}}</td>
                        <td width="10px">
                            <a class="btn btn-primary btn-sm" href="{{route('admin.posts.edit',$posts)}}">Editar</a>

                        </td>
                        <td witdh="10px">
                            <form action="{{route('admin.posts.destroy',$posts)}}" method="post">
                            @csrf
                            @method('DELETE')
                            
                            <button class="btn btn-danger btn-sm" type="submit">Eliminar</button>
                        </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <div class="card-footer">
        {{$posts->links()}}
    </div>
    
</div>
