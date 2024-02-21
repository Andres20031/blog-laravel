<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // el metodo user create  crea un nuevo usuario en la base de datos  utilizando el modelo user
        // el codigo proporciona informacion para los campos 'name' 'email' y 'password'
        // assignRole('Admin') Despues de crear el usuario asigna el rol 'Admin' en el sistema El metodo 'assignRole()' es comun en sistemas basados en roles y control de acceso para asignar roles especificos a los usuarios
        User::create([
            'name' => 'Andres carmona',
            'email' => 'andrescarmonaztxt2003@gmail.com',
            'password' => bcrypt('12345678')
        ])->assignRole('Admin');
        User::factory(50)->create();
    }
}
