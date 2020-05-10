@extends('layouts.app')

@section('title','Nuevo Inmueble')
    
@section('content')
  

    <div class="container">

        @include('common.errors')

        {!! Form::open(['route'=>'inmuebles.store', 'method'=>'POST', 'files'=>true]) !!}

            @include('inmuebles.form')
            
            {!! Form::submit('Guardar', ['class'=>'btn btn-primary'])!!}
        {!! Form::close() !!}


    </div>

@endsection


