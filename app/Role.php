<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'slug', 'description', 'full-access',
    ];






    public function users()
    {
        return $this->belongsToMany('App\User')->withTimestamps();
    }

    public function permissions()
    {
        return $this->belongsToMany('App\Permission')->withTimestamps();
    }
}
