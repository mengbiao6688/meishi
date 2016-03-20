<?php

namespace App\Http\Controllers\Admin;

use App\Meishi;
use App\MeishiCover;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Addons\Core\Controllers\AdminTrait;

class MeishiController extends Controller
{
    use AdminTrait;
    public function index(Request $request)
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
        $keys = 'name,gongyi,kouwei,yongliao,zuofa,special,type,cover_aids';
        $this->_validates = $this->getScriptValidate('meishi',$keys);
        return $this->view('admin.meishi.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $keys = 'name,gongyi,kouwei,yongliao,zuofa,special,type,cover_aids';
        $data = $this->_validates = $this->autoValidate($request,'meishi',$keys);
        dd($data);
        $cover_aids = $data['cover_aids'];unset($data['cover_aids']);
        $meishi = Meishi::create($data);
        foreach($cover_aids as $id) {
            $meishi->covers()->create([
                'cover_id' => $id,
            ]);
        }
        return $this->success('',url('admin/meishi'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $meishi = Meishi::find($id);
        if(!$meishi) {
            return $this->failure_noexists();
        }
        $keys = 'name,gongyi,kouwei,yongliao,zuofa,special,type,cover_aids';
        $this->_validates = $this->getScriptValidate('meishi',$keys);
        $this->_cover_aids = $meishi->getCovers();
        $this->_data = $meishi;
        return $this->view('admin.meishi.edit');
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
        $meishi = Meishi::find($id);
        if(!$meishi) {
            return $this->failure_noexists();
        }

        $keys = 'name,gongyi,kouwei,yongliao,zuofa,special,type,cover_aids';
        $data = $this->autoValidate($request,'meishi',$keys);
        $cover_aids = $data['cover_aids'];unset($data['cover_aids']);
        $cover = $meishi->covers();
        $cover->delete();
        foreach($cover_aids as $id) {
            $cover->create([
                'cover_id'=>$id
            ]);
        }
        $meishi->update($data);
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

        foreach ($id as $v) {
            $meishi = Meishi::find($v);
            $meishi->covers()->delete();
            $meishi->delete();
        }
        return $this->success('', count($id) > 5, compact('id'));
    }
}
