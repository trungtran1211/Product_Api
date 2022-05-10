<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use App\Models\Ncc;
use App\Models\Oders;
use App\Models\AddOders;
use Carbon\Carbon;
class OderController extends Controller
{
    public function getlistnhap(){
    	$data =  DB::table('sanpham')->orderBy('prod_id','DESC')->get();
    	$title = 'Trang nhập hàng';
    	return view('backend.importoder',compact('title','data'));
    }
    public function getAddOder($id){
    	$product = DB::table('sanpham')->where('prod_id', $id)->first();
        $product1 = $id;
        $data1 = Ncc::all();
    	$title = 'Nhập Hàng';
    	return view('backend.addoder',compact('title','data1','product','product1'));
    }
    public function postAddOder(Request $request,$id){
        $masp = $request->sanpham;
        $ncc = $request->nhacc;
        $oder = new Oders();
        $oder->mancc = $ncc;
        $oder->manv = $id;
        $oder->ngaynhap = Carbon::now();
        $oder->tongtien = $request->price * $request->qty;
        if ($oder->save()) {
            /*$mapn = Oders::select('mapn')->max('mapn');
            $mapn1 = Oders::where('mapn',$mapn)->first();
*/
            $detailOder = new AddOders();
            $detailOder->masp = $masp;
            $detailOder->soluong = $request->qty;
            $detailOder->dongia = $request->price;
            $detailOder->save();

        }
        return view('backend.importoder');
    }

}
