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
        return $this->covers()->get(['cover_id']);
    }

    public function getCover() {
        return $this->covers()->take(1)->get(['cover_id'])->pluck('cover_id');
    }
}
