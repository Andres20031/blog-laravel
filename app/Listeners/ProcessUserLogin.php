<?php

namespace App\Listeners;

use App\Events\UserLoggedIn;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class ProcessUserLogin implements ShouldQueue
{
    use InteractsWithQueue;

    public function handle(UserLoggedIn $event)
    {
        $user = $event->user;

        // Lógica para autenticar la IP aquí
        $ipAComparar = '10.25.1.161';

        if ($user->validarIP($ipAComparar)) {
            // La IP es válida, realiza las acciones necesarias
        } else {
            // La IP no coincide, maneja el caso según tus necesidades
        }
    }
}
