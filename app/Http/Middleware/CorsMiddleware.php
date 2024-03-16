<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CorsMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        // Obtener la respuesta del siguiente middleware en la cadena de middleware
        $response = $next($request);

        // Verificar si la respuesta es una instancia de Symfony\Component\HttpFoundation\Response
        if ($response instanceof \Symfony\Component\HttpFoundation\Response) {
            // Establecer los encabezados CORS en la respuesta
            $response->headers->set('Access-Control-Allow-Origin', 'http://10.25.6.190:8000');
            $response->headers->set('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
            $response->headers->set('Access-Control-Allow-Headers', 'Origin, Content-Type, Accept, Authorization, X-Requested-With');
        }

        // Devolver la respuesta con los encabezados CORS establecidos
        return $response;
    }
}
