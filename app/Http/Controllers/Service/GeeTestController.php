<?php

namespace App\Http\Controllers\Service;

use Illuminate\Http\Request;

use App\Http\Common\GeetestLib;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class GeeTestController extends Controller
{
    private $captcha_id;
    private $private_key;

    public function __construct()
    {
        $this->captcha_id = config('geetest.captcha_id','b46d1900d0a894591916ea94ea91bd2c');
        $this->private_key = config('geetest.private_key','36fc3fe98530eea08dfc6ce76e3d24c4');
    }

    public function captcha() {

        $GtSdk = new GeetestLib($this->captcha_id, $this->private_key);
        $user_id = "user".rand(1,10000);
        $status = $GtSdk->pre_process($user_id);
        session([
            'gtserver' => $status,
            'user_id' => $user_id,
        ]);
//        $_SESSION['gtserver'] = $status;
//        $_SESSION['user_id'] = $user_id;
        echo $GtSdk->get_response_str();
    }

    public function check(Request $request) {
        $GtSdk = new GeetestLib($this->captcha_id, $this->private_key);
        $user_id = session('user_id');
        if (session('gtserver') == 1) {
            $result = $GtSdk->success_validate($request->input('geetest_challenge'), $request->input('geetest_validate'), $request->input('geetest_seccode'), $user_id);
            if ($result) {
                echo 'Yes!';
            } else{
                echo 'No';
            }
        }else{
            if ($GtSdk->fail_validate($request->input('geetest_challenge'),$request->input('geetest_validate'),$request->input('geetest_seccode'))) {
                echo "yes";
            }else{
                echo "no";
            }
        }
    }
}
