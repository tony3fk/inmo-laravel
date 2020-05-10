<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Inmueble extends Model
{
    protected $primaryKey = 'referencia';
    protected $fillable = [
        'tipo',
        'operacion',
        'provincia',
        'superficie',
        'precio',
        'fecha_venta',
        'vendedor',
        'imagen',
        'updated_at'
    ];
}
