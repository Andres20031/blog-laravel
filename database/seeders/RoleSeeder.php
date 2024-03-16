<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Crea un nuevo rol en la base de datos con el nombre  'admin' y asigna el objeto de rol resultante a la  variable role1
        $role1 = Role::create(['name' => 'Admin']);
        // crea otro rol en la base de datos  con el nombre bloger y asigna  el objeto de rol resultante a la variable role2     
        $role2 = Role::create(['name' => 'Bloger']);


        //Crea otro permiso en la base de datos con el nombre admin.categories.index y los sincroniza con los roles admin y bloger este permiso los sincroniza con la vista de el administrador
        Permission::create(['name' => 'admin.home','description'=>'Ver el dashboard'])->syncRoles([$role1,$role2]);

        //con este metodo permito al rol admin  poder acceder a el crud de 
        Permission::create(['name' => 'admin.users.index','description'=>'Ver Listado de usuario'])->syncRoles([$role1]);
        Permission::create(['name' => 'admin.users.edit','description'=>'Asignar un rol'])->syncRoles([$role1]);
    
        //con este metodo le permito al rol admin y al rol bloguer poder acceder a el crud de categorias
        Permission::create(['name' => 'admin.categories.index','description'=>'Ver categorias'])->syncRoles([$role1, $role2]);
        Permission::create(['name' => 'admin.categories.create','description'=>'Crear Categorias'])->syncRoles([$role1, $role2]);
        Permission::create(['name' => 'admin.categories.edit','description'=>'Editar Categorias'])->syncRoles([$role1, $role2]);
        Permission::create(['name' => 'admin.categories.destroy','description'=>'Eliminar Categorias'])->syncRoles([$role1, $role2]);

        // Con este metodo le permito al rol admin y al rol bloger poder acceder a el crud de etiquetas 
        Permission::create(['name' => 'admin.tags.index','description'=>'Ver etiquetas'])->syncRoles([$role1,$role2]);
        Permission::create(['name' => 'admin.tags.create','description'=>'Crear Etiquetas'])->syncRoles([$role1,$role2]);
        Permission::create(['name' => 'admin.tags.edit','description'=>'Editar Etiquetas'])->syncRoles([$role1,$role2]);
        Permission::create(['name' => 'admin.tags.destroy','description'=>'Eliminar Etiquetas'])->syncRoles([$role1,$role2]);

        // Con este metodo le permito al rol admin y al rol bloger poder acceder a el crud de post
        Permission::create(['name' => 'admin.posts.index','description'=>'Ver publicaciones'])->syncRoles([$role1, $role2]);
        Permission::create(['name' => 'admin.posts.create','description'=>'Crear Publicaciones'])->syncRoles([$role1, $role2]);
        Permission::create(['name' => 'admin.posts.edit','description'=>'Editar publicaciones'])->syncRoles([$role1, $role2]);
        Permission::create(['name' => 'admin.posts.destroy','description'=>'Eliminar Publicaciones'])->syncRoles([$role1, $role2]);
    }
}
 