<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\TuyenDung;
use DB;
class TuyendungController extends Controller
{
   public function getuyendung()
    {
    	$data =  DB::table('tuyendung')->orderBy('id','DESC')->get();
        
        $title = 'Danh sách tuyển dụng';
        return view('backend.tuyendung.danhsach', compact('title','data'));
    }
    public function addtuyendungmoi()
    {
        $title = 'Thêm tuyển dụng';
        return view('backend.tuyendung.themmoi', compact('title'));
    }
    public function postaddtuyendung(Request $request)
    {
    	$tuyendung = new TuyenDung;
    	$imageName = $request->file('fImage')->getClientOriginalName();
        $tuyendung->tieude = $request->txtTDTittle;
        $tuyendung->hinhanh = $imageName;
        $tuyendung->mota = $request->txtTDIntro;
        $tuyendung->thoigian = $request->txtTDDate;
        $tuyendung->lienhe = $request ->txtTDContact;
        $tuyendung->save();
            
    	$request->file('fImage')->move(
            base_path() . '/storage/app/avatar/', $imageName
        );
        return redirect()->back();
    }
   	
}
