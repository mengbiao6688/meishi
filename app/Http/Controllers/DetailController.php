<?php

namespace App\Http\Controllers;

use App\Category;
use App\Meishi;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class DetailController extends Controller
{
    public function category($id) {
        $category = Category::find($id);
        if(!$category) {
            return $this->failure_noexists();
        }

    }

    public function meishi($id) {
        $meishi = Meishi::find($id);
        $meishi->cover_id = $meishi->getCover()->toArray()[0];
        $this->_meishi = $meishi;

//        return $this->view();
    }
}
