<?php

namespace App\Http\Controllers\Admin;

use App\Meishi;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Addons\Core\Controllers\AdminTrait;

class MeishiController extends Controller
{
    use AdminTrait;
    public function index($request)
    {
        $meishi = new Meishi();
        $builder = $meishi->newQuery();
        $pagesize = $request->input('pagesize') ?: config('site.pagesize.admin.'.$meishi->getTable(), $this->site['pagesize']['common']);
        $base = boolval($request->input('base')) ?: false;

        //view's variant
        $this->_base = $base;
        $this->_pagesize = $pagesize;
        $this->_filters = $this->_getFilters($request, $builder);
        $this->_table_data = $base ? $this->_getPaginate($request, $builder, ['*'], ['base' => $base]) : [];
        return $this->view('admin.meishi.'. ($base ? 'list' : 'datatable'));
    }

    public function data(Request $request)
    {
        $news = new Meishi();
        $builder = $news->newQuery();
        $_builder = clone $builder;$total = $_builder->count();unset($_builder);
        $data = $this->_getData($request, $builder);
        $data['recordsTotal'] = $total;
        $data['recordsFiltered'] = $data['total'];
        return $this->success('', FALSE, $data);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $keys = 'title,content';
        $this->_validates = $this->getScriptValidate('news.store',$keys);
        $this->_data = [];
        return $this->view('admin.news.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $news = News::find($id);
        if(!$news) {
            return $this->failure_noexists();
        }
        $keys = 'name,developers,area,address,natrue,type';
        $this->_validates = $this->getScriptValidate('product.store',$keys);
        $this->_data = $news;
        return $this->view('admin.news.edit');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $product = News::find($id);
        if(!$product) {
            return $this->failure_noexists();
        }

        $keys = 'name,content';
        $data = $this->autoValidate($request,'news.store',$keys);

        $product->update($data);
        return $this->success();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        empty($id) && !empty($request->input('id')) && $id = $request->input('id');
        $id = (array) $id;

        foreach ($id as $v)
            $product = News::destroy($v);
        return $this->success('', count($id) > 5, compact('id'));
    }
}
