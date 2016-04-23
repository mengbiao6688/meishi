<?php

namespace App\Http\Controllers;

use App\Category;
use App\Meishi;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\User;

class HomeController extends Controller
{
	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */

	public function index(Request $request)
	{

		return $this->view('index');
	}

	public function category($id) {
		$category = Category::find($id);
		if(!$category) {
			return $this->failure_noexists();
		}
		$this->_data = $category;
		return $this->view('category');

	}

	//详情页
	public function meishi($id) {
		$meishi = Meishi::find($id);
		if(!$meishi) {
			return $this->failure('meishi.nomeishi',url('/'));
		}



		//删除第一张图片
		$aids = $meishi->getCovers();
		$aids->shift();
		$meishi->aids = $aids->pluck('cover_id');
		$meishi->pid = $meishi->getCover()->toArray()[0];
		$this->_meishi = $meishi;

        return $this->view('meishi');
	}

	//关于我们
	public function about() {
		return $this->view('about');
	}

	//联系我们
	public function contact() {
		$this->_customer = session('customer');
		return $this->view('contact');
	}

	//页面
	

	public function recipes() {
		return $this->view('recipes');
	}
	
	public function foods() {
		return $this->view('foods');
	}

	public function tips() {
		return $this->view('tips');
	}
	
	
	public function login() {
		return $this->view('login');
	}
	
	public function register() {
//		$keys = 'username,password,password2';
//		$this->_validates = $this->getScriptValidate('login',$keys);
		return $this->view('register');
	}
		
		/*public function meishi-3() {
		return $this->view('meishi-3');
	}*/
	
	

	//搜索页面
	public function search(Request $request) {
		$keys = $request->get('keys');
		if(!$keys) {
			return $this->failure('meishi.null',url('/'));
		}
		$this->_results = $this->getSearchResult($keys);
		$this->_keys = $keys;
		return $this->view('search');
	}

	private function getSearchResult($keys) {

		$meishi = Meishi::where('name','like',"%$keys%")->get();
		if($meishi->count()) {
			foreach($meishi as $m) {
				$m->pid = $m->getCover()->first();
			}
			return $meishi;

		} else {
			return [];
		}
	}
}
