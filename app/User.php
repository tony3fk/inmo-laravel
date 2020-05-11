<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\App;

class User extends Authenticatable
{
    use Notifiable;



    public function authorizeRoles($roles)
    {
        abort_unless($this->hasAnyRole($roles), 401);
    }




    public function hasAnyRole($roles)
    {
        if (is_array($roles)) {

            foreach ($roles as $role) {

                if ($this->hasRole($role)) {

                    return true;
                }
            }
        } else {

            if ($this->hasRole($roles)) {

                return true;
            }
        }

        return false;
    }



    //validamos si un usuario tiene un rol
    public function hasRole($role)
    {
        if ($this->roles()->where('name', $role)->first()) {
            return true;
        }
        return false;
    }


    public function roles()
    {
        return $this->belongsToMany('App\Role')->withTimestamps();
    }









    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'avatar',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
}
