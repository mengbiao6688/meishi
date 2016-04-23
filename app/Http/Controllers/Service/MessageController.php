<?php

namespace App\Http\Controllers\Service;

use App\Message;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class MessageController extends Controller
{
    public function add(Request $request) {
        $data = $request->all();
        if(empty($data['user'])) {
            return response()->json([
                'result' => false,
                'message' => '用户名不能为空'
            ]);
        }
        if(empty($data['content'])) {
            return response()->json([
                'result' => false,
                'message' => '留言不能为空'
            ]);
        }
        $message = Message::create([
            'user' => $data['user'],
            'content' => $data['content']
        ]);
        if($message->getKey()) {
            return response()->json([
                'result' => true,
                'message' => '感谢你的反馈，你的留言我们已经收到'
            ]);
        } else {
            return response()->json([
                'result' => false,
                'message' => '系统繁忙，请稍后再试'
            ]);
        }
    }
}
