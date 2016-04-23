<?php

namespace App\Http\Controllers\Service;

use App\Customer;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class AccountController extends Controller
{
   public function login(Request $request) {
       $customer = Customer::where('username',$request->get('username'))->get(['username','password']);
       if($customer->count()) {
           $customer = $customer->toArray()[0];
           if($customer['password'] == md5($request->get('password'))) {
               session(['customer'=>$customer]);
               return response()->json([
                   'success' => true,
                   'message' => '登录成功，请尽情的享用吧！'
               ]);
           } else {
               return response()->json([
                   'success' => false,
                   'message' => '密码错误，不要急哦！'
               ]);
           }
       } else {
           return response()->json([
               'success' => false,
               'message' => '用户名不存在，亲！！'
           ]);
       }
   }

    public function register(Request $request) {
        $customer = Customer::create([
            'username' => $request->get('username'),
            'password' => md5($request->get('password')),
        ]);
        if($customer->getKey()) {
            echo "注册成功";
        } else {
            echo "注册失败，发生未知错误，请稍后重试！";
        }
    }
}
