<?php

namespace App\Http\Controllers\Service;

use Illuminate\Http\Request;
use App\Meishi;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class SearchController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $keys = $request->get('k');
        if(!$keys) {
            echo json_encode([
                'success' => false,
                'message' => '请输入关键字！',
                'data' => []
            ]);
        }
        $meishi = Meishi::where('name','like',"%$keys%")->get();
        if($meishi->count()) {
            echo json_encode([
                'success' => true,
                'message' => "操作成功！",
                'data' => $meishi->toArray()
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => "没有找到\"$keys\"相关内容",
                'data' => []
            ]);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
