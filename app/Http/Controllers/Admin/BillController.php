<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Bill;
use App\Models\BillDetail;
use PDF;
use DB;

class BillController extends Controller
{
    public function getbill(){
    	$data = DB::table('hoadon')->where('trangthai','>=', 2)->orderBy('bil_id','DESC')->get();
    	return view('backend.donhang.danhsach',compact('data'));
    }
    public function getdelbill($id){
    	DB::table('hoadon')->where('bil_id',$id)->delete();
        return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Xóa thành công!!!']);
    }
    public function getlistBill($id)
    {
        
        $bill = DB::table('hoadon')->where('bil_id',$id)->first();
        $data = DB::table('hoadon')->where('bil_id',$id)->get();
        
        $data1 = DB::table('chitiethoadon')->where('mahd',$id)->join('sanpham','sanpham.prod_id','=','chitiethoadon.masp')->get();
        
        $title = 'Hóa đơn';
        return view('backend.donhang.sua', compact('title','data','data1','bill'));
    }
    public function getduyet()
    {
        $title = 'Duyệt Hóa Đơn';
        $data = DB::table('hoadon')->where('trangthai',1)->orderBy('bil_id','DESC')->get();
        
        return view('backend.duyet', compact('title','data'));
    }
    public function updateStatusBill($id)
    {
        DB::table('hoadon')->where('bil_id',$id)->update(['trangthai' => 2]);
        return redirect()->back();
    }

    public function getPdfBill($id)
    {
        $data = DB::table('hoadon')->where('bil_id',$id)->get();
        
        $data1 = DB::table('chitiethoadon')->where('mahd',$id)->join('sanpham','sanpham.prod_id','=','chitiethoadon.masp')->get();
        $title = 'Hóa đơn';
        $pdf = PDF::loadView('backend.donhang.hoadon',compact('title','data','data1'));
        return $pdf->stream();

    }
    public function getXoaBill($id){
        DB::table('hoadon')->where('bil_id',$id)->delete();
        return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Xóa thành công!!!']);
    }
    public function updateBillShip(Request $request)
    {
        DB::table('hoadon')->where('bil_id',$request->idbill)->update(['trangthai' => $request->selStatus]);
        return redirect()->back()->with('mess','Cập nhật thành công');
    }
}
