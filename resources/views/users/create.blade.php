@extends('layouts.app')

@section('title','Nuevo Usuario')
    
@section('content')
  

    <div class="container">

        @include('common.errors')

        {!! Form::open(['route'=>'users.store', 'method'=>'POST', 'files'=>true]) !!}

            @include('users.form')
            
            {!! Form::submit('Guardar', ['class'=>'btn btn-primary'])!!}
        {!! Form::close() !!}


    </div>

@endsection