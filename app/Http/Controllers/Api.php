<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Client;
use GuzzleHttp\Exception\RequestException;

class Api extends Controller
{
    
    public function consumeApi()
    {
        $client = new Client([
            'verify' => false
        ]);
        
        try {
            // Realizar la solicitud GET a la API
            $response = $client->get('https://rickandmortyapi.com/api/character');

            // Obtener el cuerpo de la respuesta
            $body = $response->getBody();

            // Decodificar los datos JSON de la respuesta
            $data = json_decode($body);

            // Aquí puedes trabajar con los datos obtenidos de la API
            // Por ejemplo, devolver los datos en una vista
            return view('LTE.api', compact('data'));
        } catch (RequestException $e) {
            // Manejar errores de la solicitud
            return response()->json(['error' => 'Error al consumir la API: ' . $e->getMessage()], 500);
        }
    }
}

