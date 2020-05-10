@if($errors->any())
    <div class="alert alert-danger">
        <ul class="none">
            @foreach($errors->all() as $error)

                <li class="text-center" style="list-style:none"> {{$error}}</li>      

            @endforeach
        </ul>
    </div>
@endif