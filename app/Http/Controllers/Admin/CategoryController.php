<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Http\Requests\AddCateRequest;
class CategoryController extends Controller
{
    //
    public function getCate(){
    	$data['catelist'] = Category::all();
    	return view('backend.category',$data);
    }

    public function postCate(AddCateRequest $request){
    	$category = new category;
    	$category->tenloai = $request->name;
    	$category->cate_slug = str_slug($request->name);
    	$category->save();
    	return back();
    }

    public function getEditCate($id){
    	$data['cate'] = Category::where('cate_id',$id)->first();
    	return view('backend.editcategory',$data);
    }
    public function getDeleteCate($id){
    	Category::where('cate_id',$id)->delete();
    	return back();
    }
}
