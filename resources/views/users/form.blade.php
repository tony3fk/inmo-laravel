

<div class="form-group">
    <label>Name</label>
    <input type="text" class="form-control" name="superficie"value="{{$user->name ?? ''}}" required>
</div>

<div class="form-group">
    <label>Email</label>
    <input type="email" class="form-control" name="precio" value="{{$user->email ?? ''}}" required>
</div>
<div class="form-group">
    <label>Password</label>
    <input type="text" class="form-control" name="superficie"value="{{$user->password ?? ''}}" required>
</div>

<div class="form-group">
   
    <label>Imagen</label>
    <input accept="image/jpeg, image/png, image/jpg" type="file" name="imagen">
    <img src="{{$inmueble->imagen ?? ''}}" class="w-25">
</div>
