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
	public function __construct()
	{
		$this->_categories = Category::all();
	}

	public function index(Request $request)
	{
		//特色菜谱
		$special = Meishi::where('special',1)->take(3)->get(['id','name']);
		foreach($special as $item) {
			$data = $item->getCover();
			$item->cover_id = $data->toArray()[0];
		}
		$this->_special = $special;
		//最新菜谱
		$new = Meishi::orderBy('created_at','DESC')->take(3)->get(['id','name']);
		foreach($new as $item) {
			$data = $item->getCover();
			$item->cover_id = $data->toArray()[0];
		}
		$this->_new = $new;
		//国外菜肴
		$this->_guowai = $this->meishiType(1);
		//国内菜肴
		$this->_guonei = $this->meishiType(2);
		//家常菜肴
		$this->_jiachang = $this->meishiType(3);

		return $this->view('index');
	}


	private function meishiType($type) {
		$types = Meishi::where('id',$type)->take(5)->get();
		foreach($types as $item) {
			$data = $item->getCover();
			$item->cover_id = $data->toArray()[0];
		}
		return $types;
	}

	public function category($id) {
		$category = Category::find($id);
		if(!$category) {
			return $this->failure_noexists();
		}
		$this->_data = $category;
		return $this->view('category');

	}

	public function meishi($id) {
		$meishi = Meishi::find($id);
		$meishi->cover_id = $meishi->getCover()->toArray()[0];
		$this->_meishi = $meishi;

        return $this->view('meishi');
	}
}
