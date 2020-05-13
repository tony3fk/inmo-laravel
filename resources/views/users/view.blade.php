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
                        <input type="text" class="form-control" id="name" placeholder="Name" name="name" value="{{old('name', $user->name)}}" readonly>
                        </div>

                         <div class="form-group">                    
                            <input type="text" class="form-control" id="email" placeholder="Email" name="email" value="{{old('email', $user->email)}}" readonly>
                        </div>
                      
                        <div class="form-group">
                             <input type="text" class="form-control" id="avatar" placeholder="Avatar" name="avatar" value="{{old('avatar', $user->avatar)}}" readonly>
                        </div>
                        <hr>

                        {{-- <h3>Full Access</h3>

                        <div class="custom-control custom-radio custom-control-inline">
                            <input disabled type="radio" id="fullaccessyes" name="full-access" class="custom-control-input" value="yes" 
                                @if($user['full-access']=='yes') 
                                    checked
                                @elseif(old('full-access')=='yes')
                                    checked
                                @endif>
                            <label class="custom-control-label" for="fullaccessyes">
                                Yes
                            </label>

                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input disabled type="radio" id="fullaccessno" name="full-access" class="custom-control-input" value="no" 
                                @if($user['full-access']=='no') 
                                    checked
                                @elseif(old('full-access')=='no')
                                    checked
                                @endif>
                            <label class="custom-control-label" for="fullaccessno">
                                No
                            </label>
                        </div>

                        <hr>

                        <h3>Permission List</h3>

                        @foreach($permissions as $permission)

                          
                          <div class="custom-control custom-checkbox">
                            <input disabled type="checkbox" 
                            class="custom-control-input" 
                            id="permission_{{$permission->id}}"
                            value="{{$permission->id}}"
                            name="permission[]"

                            @if( is_array(old('permission')) && in_array("$permission->id", old('permission'))    )
                            checked

                            @elseif( is_array($permission_user) && in_array("$permission->id", $permission_user)    )
                            checked

                            @endif
                            >
                            <label class="custom-control-label" 
                                for="permission_{{$permission->id}}">
                                {{ $permission->id }}
                                - 
                                {{ $permission->name }} 
                                <em>( {{ $permission->description }} )</em>
                            
                            </label>
                          </div>


                          @endforeach --}}
                        <hr>
                        
                        <a href="{{route('user.edit', $user->id)}}"  class="btn btn-success">Edit</a>
                        <a href="{{route('user.index')}}"  class="btn btn-danger">Back</a>
                    
  


                    </form>
               </div>
            </div>
        </div>
    </div>
</div>
@endsection