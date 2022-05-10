<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;
use App\Models\Size;
use App\Models\Comment;
use App\Models\YeuThich;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;
use Cart;
use DB;
class FrontendController extends Controller
{
    public function getHome(){
    	$featured = Product::where('prod_featured',0)->orderBy('prod_id','desc')->take(10)->get();
    	$news = Product::where('prod_featured',1)->orderBy('prod_id','desc')->take(10)->get();
        $new  = Product::where('prod_featured',2)->orderBy('prod_id','desc')->take(10)->get();
        //$cart = Cart::subtotal() != 0 ? Cart::content() : 'Rỗng';
    	// return view('frontend.home',$data,compact( 'cart'));
        $response = [
            'featured'      => $featured,
            'news'      => $news,
            'new'      => $new,
        ];
        return response()->json($response , Response::HTTP_NOT_FOUND);
    }
    public function getDetail($id){
    	$item = Product::select('*')->where('prod_id', $id)->first();
        $items = Size::select('*')->first();
    	$comments = Comment::where('masanpham',$id)->get(); 
    	// return view('frontend.details',$data);
        $response = [
            'item'      => $item,
            'items'      => $items,
            'comments'      => $comments,
        ];
        return response()->json($response , Response::HTTP_NOT_FOUND);
    }
    public function getCategory($id){
    	$catename = Category::select('*')->where('cate_id', $id)->first();
    	$items = Product::where('maloaisp',$id)->orderBy('prod_id','desc')->paginate(8);
    	//return view('frontend.category',$data);
        $response = [
            'catename'      => $catename,
            'items'      => $items,
        ];
        return response()->json($response , 200);
    }
    public function postComment(Request $request, $id){
       
    	$comment = new Comment;
    	$comment ->hoten = $request->name;
    	$comment ->email = $request->email;
    	$comment ->noidung = $request->content;
    	$comment->masanpham = $id;
    	$comment ->save();
    	//return back();
        return response()->json([
            'status'=> 200,
            'message'=> 'Comment created successfully',
            'data'=>$comment
        ]);
    }
    public function getSearch(Request $request){
    	 $result = $request->result;
    	 $data ['keyword'] = $result;
    	 $result = str_replace(' ', '%', $result);
    	 $data['search'] = Product::where('tensanpham','like','%'.$result.'%')->get();
    	 return view('frontend.search',$data);
    }
    public function getContact()
    {
        $title = 'Thông tin Cửa hàng';
        return view('frontend.contact', compact('title'));
    }
    public function getCheck()
    {
        $title = 'Kiểm tra đơn hàng';
        return view('frontend.check', compact('title'));
    }
    public function getCheckBill(Request $request){
       
       $data = DB::table('hoadon')->where('bil_id',$request->order)->first();
       if (!$data) {
            return redirect()->back()->with('trackoder', 'Không tìm thấy đơn hàng');
       }
        $data1 = DB::table('chitiethoadon')->where('mahd',$request->order)->join('sanpham','sanpham.prod_id','=','chitiethoadon.masp')->get();
        
        return view('frontend.checkbill', compact( 'data' ,'data1'));
    }
    public function getDeleteBill($id){
        DB::table('hoadon')->where('bil_id',$id)->update(['trangthai' => 5]);
        return redirect()->route("home");

    }
    public function getlisttd(){
        $data =  DB::table('tuyendung')->orderBy('id','DESC')->get();
        return view('frontend.tuyendung',compact('data'));
    }
    public function getLichSu($id){
        $data1 = DB::table('chitiethoadon')->where('manguoidung',$id)->join('sanpham','sanpham.prod_id','=','chitiethoadon.masp')->join('hoadon','hoadon.bil_id','=','chitiethoadon.mahd')->get();
        return view('frontend.history',compact('data','data1'));
    }


    public function getYeuThich( $id){
        $product = Product::select('*')->where('prod_id',$id)->first();
        $user_id = Auth::user()->id;
        $yeuthich = new YeuThich;
        $yeuthich->masp = $id;
        $yeuthich->mand = $user_id;
        $yeuthich->hinhanh = $product->hinhanh;
        $yeuthich->tensp = $product->tensanpham;
        $yeuthich->dongia = $product->dongia;
        $yeuthich ->save();
        return back();
    }
    public function getPageYT($id){
        $data  = YeuThich::select('*')->where('mand',$id)->get();
        return view('frontend.my-wishlist',compact('data'));
    }
    public function getdeleteyt($id){
        YeuThich::where('id',$id)->delete();
        return back();
    }
}
