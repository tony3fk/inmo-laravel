@extends('layouts.app')   

@section('Materialize')
<!-- Materialize-->
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
@endsection

@section('content')
<div class="container">
    <p>LISTADO DE INMUEBLES</p>
    <div class="row">
        
        @foreach ($inmuebles as $inmueble)
        <div class="col s12 m7">
            <div class="card">

                <div class="card-image">
                    <a href="{{$inmueble->imagen}}">
                        <img src="{{$inmueble->imagen}}">
                    </a>                 
                </div>

                <div class="card-content">
                    <span class="card-title">Ref: {{$inmueble->referencia}}</span>
                    <h6>{{$inmueble->tipo}} en {{$inmueble->provincia}}</h6>
                    <p>En {{$inmueble->operacion}}, {{$inmueble->precio}} €</p>
                </div>

                <div class="card-action">
                    <a href="#">INFO</a>
                </div>

            </div>

        </div>
        @endforeach
    </div>
</div>
  @endsection



   