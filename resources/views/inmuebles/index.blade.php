@extends('layouts.app')   
@section('content')
<div class="container">
    <p>LISTADO DE INMUEBLES</p>
    <div class="row">
        
        @foreach ($inmuebles as $inmueble)
        <div class="col s12 m7">
            <div class="card">
                <div class="card-image">
                    <img src="https://cdn.shopify.com/s/files/1/1103/5152/t/260/assets/bc-sf-filter-no-image.gif?v=14551687384537563457">
                    <span class="card-title">Referencia: {{$inmueble->referencia}}</span>
                </div>
                <div class="card-content">
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



    {{-- <p>LISTADO DE INMUEBLES</p>
    <div class="container-fluid">
       
       

        @foreach ($inmuebles as $inmueble)
        <div class="re-Card re-Card--landscape">
           

                <!-- Card image -->
                <div class="re-Card-primary">

                <img class=" embed-responsive-item img-thumbnail" src="{{$inmueble->imagen}}" alt="Card image cap" id="img-inmueble">

                </div>

                <!-- Card content -->
                <div class="re-Card-secondary ">



                    <!-- Title  -->
                    <h4 class="card-title">Referencia: {{$inmueble->referencia}}</h4>


                    <hr class="hr-light">
                    <!-- Text -->

                    <h6 class="card-text">{{$inmueble->tipo}} en {{$inmueble->provincia}}</h6>

                    <p class="card-text">  En {{$inmueble->operacion}}, {{$inmueble->precio}} €</p>
                    <!-- Link -->
                    <div class="text-right">
                        <a href="" class="btn btn-warning">
                            <h5>Más info.</h5>
                        </a>
                    </div>


                </div>

          
    
            <!-- Card Dark -->

            
        @endforeach
        </div>
</div>

 --}}