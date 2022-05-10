<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Cart;
use App\Models\Product;
use App\Models\Bill;
use App\Models\BillDetail;
use App\Models\Users;
use Mail;
use Auth;
use Carbon\Carbon;
use DB;
use Illuminate\Support\Facades\Input;
class CartController extends Controller
{
    public function getAddCart($id){
    	$product = Product::select('*')->where('prod_id', $id)->first();
        
    	Cart::add([
            'id' => $id,
            'name' => $product->tensanpham,
            
            'qty' => 1,
            'price' => $product->dongia,
            'options' => [
                'img' => $product->hinhanh,
                
               
            ]
        ]);
    	return redirect('cart/show');
    }

    public function getShow($id){
        $product = Product::select('*')->where('prod_id', $id)->first();
        Cart::add([
            'id' => $id,  
            'name' => $product->tensanpham,
            'qty' => 1, 
            
            'price' => $product->dongia, 
            'options' => [
                'img' => $product->hinhanh,
                'size' => 37,   
            ]
        ]);

        return redirect()->back();
    }
    public function getShowCart(){
    	$data['total'] = Cart::total();
    	$data['items'] = Cart::content();
    
    	return view('frontend.cart',$data);
    }
    public function getDeleteCart($id){
        if ($id=='all') {
            Cart::destroy();
        }else{
            Cart::remove($id);
        }
        return back();
    }
    public function getUpdateCart(Request $request){
        /*$qty = DB::table('kichcosp')->where([['masp',$request->id],['makc',$request->size]])->first();
        if ($qty->soluong > $request->qty) {
            return redirect()->back()->with('mess',"<script type='text/javascript'>alert('khong du')</script>");
        }else{*/
            Cart::update($request->rowId,$request->qty);   
        /*}*/
        

    }
     
    public function postComplete(Request $request){
        $data ['info'] = $request->all();
        
        $email = $request->email;
        $data ['total'] = Cart::total();
        $data ['cart'] = Cart::content();
         
            Mail::send('frontend.email', $data, function ($message) use ($email) {
            $message->from('truongchode0202@gmail.com', 'Giày Store');

            $message->to($email , $email);

            $message->cc('thanhtrungtran8888@gmail.com', 'Trần Thanh Trung');

            $message->subject('Xác nhận hóa đơn mua hàng Giày Store');
        
        });
        //return redirect(route('complete'));

        $user = Auth::user();
        $total = Cart::total(0,'','');
        $cart = Cart::content();
        $user_id =Auth::user()->id;
        $name =  Auth::user()->name;
        $phone =  Auth::user()->phone;
        $address =  Auth::user()->address ;
        $email = Auth::user()->email;

        $bill = new Bill;
        $bill->manguoidung = $user_id;
        $bill->tennguoinhan = $name;
        $bill->sodt = $phone;
        $bill->diachi = $address;
        $bill->tongtien = $total;

        $bill->hinhthucthanhtoan = 'Thanh toán khi nhận hàng';
        $bill->ngaydat = carbon::now();
        $bill->trangthai = 1;
        if ($bill->save()) {
            $id_bill = Bill::select('bil_id')->max('bil_id');
            $bills = Bill::where('bil_id',$id_bill)->first();
            foreach ($cart as  $value)
            {
               $detailbill = new BillDetail;
               $detailbill->mahd = $id_bill;
               $detailbill->masp = $value->id; 
               $detailbill->soluong = $value->qty;
               $detailbill->tongtien = $value->price*$value->qty;
               $detailbill->kichco =  $value->options->size;
               $detailbill->save();
               
               $qty_product = Product::select('soluongcon','soluongban')->where('prod_id',$value->id)->first();
               $qty_update = $qty_product->soluongcon - $value->qty;

               $qtynumber = $qty_product->soluongban + $value->qty;
               Product::where('prod_id', $value->id )->update(['soluongcon'=>$qty_update,'soluongban'=>$qtynumber]); 

            }
        }
         Cart::destroy();
        return view('frontend.success', compact('bills', 'cart','total'));
    }
    
    public function getCheckout( Request $request)
    {
    
        
       $data['total'] = Cart::total();
        $data['items'] = Cart::content();
        $title = 'Thanh toán đơn hàng';

        $email =  Auth::user()->email;
        $name =  Auth::user()->name;
        $phone =  Auth::user()->phone;
        $address =  Auth::user()->address ;
        return view('frontend.checkout',$data,compact('title', 'name', 'email', 'address', 'phone'));
    }


    public function addCartAjax(Request $request)
    {
        $product = Product::select('*')->where('prod_id', $request->id)->first();
        Cart::add([
            'id' => $request->id,
            'name' => $product->tensanpham,
            
            'qty' => 1,
            
            'price' => $product->dongia,
            'options' => [
                'img' => $product->hinhanh,
                'size' => $request->size
                 
            ]
        ]);
    
        return response()->json(['status' => 'success', 'data' => $product]);
    }
    public function getUpdateSize(Request $request)
    {
        
       Cart::update($request->rowId, ['options'=> ['size' => $request->size]]);
        return response()->json(['status' => 'success']);
       
    }
    
    public function getAddCartYt($id){
        $product = Product::select('*')->where('prod_id', $id)->first();
            Cart::add([
                'id' => $id,  
                'name' => $product->tensanpham,
                'qty' => 1, 
                'price' => $product->dongia, 
                'options' => [
                    'img' => $product->hinhanh,
                    'size' => 37,   
                ]
            ]);

            return redirect()->back();  
    }
        
}
