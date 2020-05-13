@extends('layouts.app')

@section('title','Nuevo Usuario')
    
@section('content')
  

    <div class="container">

        @include('common.errors')

        {!! Form::open(['route'=>'user.store', 'method'=>'POST', 'files'=>true]) !!}

            @include('users.form')
            
            {!! Form::submit('Save', ['class'=>'btn btn-primary'])!!}
        {!! Form::close() !!}


    </div>

@endsection