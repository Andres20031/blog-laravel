
<div>
    <div class="card">
     @if ($users->count())
     <div class="card-body">
        <table class="table table-stripped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Email</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $user)
                    <tr>
                        <td>{{$user->id}}</td>
                        <td>{{$user->name}}</td>
                        <td>{{$user->email}}</td>
                        @can('admin.users.edit')
                        <td width="10px"> 
                            <a class="btn btn-primary" href="{{route('admin.users.edit', $user)}}">Editar</a>
                        </td>
                        @endcan
                    </tr>
                @endforeach
            </tbody>
        </table>
       </div>
       <div class="card-footer">
        {{$users->links()}}
       </div>         
       @else
         <div class="card-body">
             <strong>No hay registros</strong>
         </div>
     @endif
   
        
    </div>
  
 </div>
 