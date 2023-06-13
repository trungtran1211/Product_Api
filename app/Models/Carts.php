<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Carts extends Model
{
    protected $table = 'cart'; // Tên của bảng giỏ hàng trong cơ sở dữ liệu
    protected $primaryKey = 'cart_id';
    protected $fillable = [
        'prod_id',
        'mand',
        'prod_name',
        'cart_qty',
        'dongia',
        'tongtien',
        'hinhanh',
        'size',
        // Các trường khác nếu cần
    ];

    // Thiết lập quan hệ với bảng sản phẩm
    public function product()
    {
        return $this->belongsTo(Product::class, 'prod_id');
    }

    // Thiết lập quan hệ với bảng người dùng
    public function user()
    {
        return $this->belongsTo(User::class, 'mand');
    }
}
