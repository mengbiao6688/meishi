<?php

namespace App\Http\Controllers\Service;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class AccountController extends Controller
{
   public function login(Request $request) {
       dd($request->all());
   }
}
