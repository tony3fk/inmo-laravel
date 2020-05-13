@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <h2>Edit user</h2>
                </div>

                <div class="card-body">
                   @include('custom.message')


                    <form action="{{route('user.update', $user->id)}}" method="POST">
                        @csrf
                        @method('PUT')


                        <div class="container">
                            <h3>Required data</h3>
                        </div>
                        <div class="form-group">                        
                        <input type="text" class="form-control" id="name" placeholder="Name" name="name" value="{{old('name', $user->name)}}">
                        </div>

                         <div class="form-group">                    
                            <input type="text" class="form-control" id="email" placeholder="Email" name="email" value="{{old('email', $user->email)}}">
                        </div>
                      
                        <div class="form-group">
                           <input type="text" class="form-control" id="avatar" placeholder="Avatar" name="avatar" value="{{old('avatar', $user->avatar)}}">
                        </div>
                        <hr>

                      
                        <hr>
                        <input type="submit" class="btn btn-primary" value="Save">
  


                    </form>
               </div>
            </div>
        </div>
    </div>
</div>
@endsection
