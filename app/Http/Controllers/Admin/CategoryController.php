<?php

namespace App\Http\Controllers\Admin;

use App\Category;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Addons\Core\Controllers\AdminTrait;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    use AdminTrait;
    public function index(Request $request)
    {
        $category = new Category();
        $builder = $category->newQuery();
        $pagesize = $request->input('pagesize') ?: config('site.pagesize.admin.'.$category->getTable(), $this->site['pagesize']['common']);
        $base = boolval($request->input('base')) ?: false;

        //view's variant
        $this->_base = $base;
        $this->_pagesize = $pagesize;
        $this->_filters = $this->_getFilters($request, $builder);
        $this->_table_data = $base ? $this->_getPaginate($request, $builder, ['*'], ['base' => $base]) : [];
        return $this->view('admin.category.'. ($base ? 'list' : 'datatable'));
    }

    public function data(Request $request)
    {
        $category = new Category();
        $builder = $category->newQuery();
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
        $keys = 'name';
        $this->_validates = $this->getScriptValidate('category',$keys);
        return $this->view('admin.category.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $keys = 'name';
        $data = $this->autoValidate($request,'category',$keys);
        Category::create($data);

        return $this->success('',url('admin/category'));
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
        $category = Category::find($id);
        if(!$category) {
            return $this->failure_noexists();
        }
        $keys = 'name';
        $this->_validates = $this->getScriptValidate('category',$keys);
        $this->_data = $category;
        return $this->view('admin.category.edit');
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
        $category = Category::find($id);
        if(!$category) {
            return $this->failure_noexists();
        }

        $keys = 'name';
        $data = $this->autoValidate($request,'category',$keys);

        $category->update($data);
        return $this->success();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request,$id)
    {
        empty($id) && !empty($request->input('id')) && $id = $request->input('id');
        $id = (array) $id;

        foreach ($id as $v)
            Category::destroy($v);
        return $this->success('', count($id) > 5, compact('id'));
    }
}
