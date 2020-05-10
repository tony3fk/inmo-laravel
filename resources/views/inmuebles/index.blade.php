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
        
        @foreach ($inmuebles ?? '' as $inmueble)
        <div class="col s12 m7 l4 xl3">
            <div class="card">

                <div class="card-image">
                    <a href="{{$inmueble->imagen}}">
                        <img src="{{$inmueble->imagen}}">
                    </a>                 
                </div>

                <div class="card-content">
                    <span class="card-title">{{$inmueble->tipo}} en {{ucfirst($inmueble->provincia)}}</span>
                    <label >Ref: {{$inmueble->referencia}}</label>
                    
                    <p>En {{$inmueble->operacion}} por {{$inmueble->precio}} €</p>
                </div>

                <div class="card-action">
                <a href="/inmuebles/{{$inmueble->referencia}}">Info</a>
                </div>

            </div>

        </div>
        @endforeach
    </div>
</div>
@endsection



   