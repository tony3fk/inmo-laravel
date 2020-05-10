@extends('layouts.app')

@section('title','Editar Inmueble')
    
@section('content')
    <div class="container">

         {!! Form::model($inmueble, ['route'=>['inmuebles.update',$inmueble], 'method'=>'PUT', 'files'=>true]) !!}

            @include('inmuebles.form')
            
            {!! Form::submit('Actualizar', ['class'=>'btn btn-primary'])!!}
        {!! Form::close() !!}
    
  
    </div>

@endsection


