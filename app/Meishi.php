<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Meishi extends Model
{
    protected $guarded = ['id'];
    protected $table = 'meishi';

    public function covers() {
        return $this->hasMany('App\\MeishiCover','meishi_id','id');
    }

    public function getCovers() {
        $convers = $this->covers()->get(['cover_id']);
        return $convers;
    }
}
