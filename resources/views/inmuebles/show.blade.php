@extends('layouts.app')   

@section('content')

<div class="container">
    <br>
    {{-- <div class="row justify-content-around">
        <div class="col-1 ">
            <a href="index.php?ctl=verInmueble&referencia=" type="button" class="btn btn-lg btn-outline-warning w-100">
                <i class="text-dark fa fa-angle-double-left"></i>
            </a>
        </div>
        <div class="col-1">
            <a type="button" class="btn btn-outline-secondary " href="index.php?ctl=inicio"><i class="fa fa-search"></i></a>
        </div>
        <div class="col-1">
            <a href="index.php?ctl=verInmueble&referencia=" type="button" class="btn btn-lg btn-outline-warning w-100">
                <i class="text-dark fa fa-angle-double-right"></i>
            </a>
        </div>


    </div> --}}
    <br>
    <div class="row">
        <div class="col-12 col-xl-6 m-auto">
            <a href="{{$inmueble->imagen}}" target="_blank">
                <img class="w-100 img-thumbnail" src="{{$inmueble->imagen}}">
            </a>
        </div>


        <div id="fichaInmueble" class=" col- 12 col-xl-6  mt-1">

            <h1 class="text-center">Ref: {{$inmueble->referencia}}</h1>

            <!--Implantar siguiente registro -->
            <table class="bg-light table mt-5 m-auto">

                <tr>
                    <td>Fecha de alta</td>
                    <td>{{$inmueble->created_at}}</td>

                </tr>
                <tr>
                    <td>Tipo</td>
                    <td>{{$inmueble->tipo}}</td>

                </tr>
                <tr>
                    <td>Operación</td>
                    <td>{{$inmueble->operacion}}</td>

                </tr>
                <tr>
                    <td>Provincia</td>
                    <td>{{ucfirst($inmueble->provincia)}}</td>

                </tr>
                <tr>
                    <td>Superficie</td>
                    <td>{{$inmueble->superficie}}</td>

                </tr>
                <tr>
                    <td>Precio</td>
                    <td>{{$inmueble->precio}} €</td>

                </tr> 
                <tr>
                       
                    <td colspan=2 class="text-center">
                         {{-- if admin --}}
            
                    <a href="/inmuebles/{{$inmueble->referencia}}/edit"class="btn btn-primary w-100">Edit</a>
                </td>
                </tr>         
            </table>
        </div>
    </div>
</div>

@endsection