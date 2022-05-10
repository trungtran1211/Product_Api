<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Product;
class BillDetail extends Model
{
    protected $fillable = [
    	'det_id',
    	'mahd',
    	'masp',
        'soluong',
        'tongtien'   	
    ];
    protected $table = 'chitiethoadon';
    protected $primarykey = 'det_id';
    protected $guarded = [];

   /* public function invoiceDetails()
    {
    	return $this->hasMany(\App\Models\BillDetail::class);
    }
*/
    public function product()
    {
      return $this->belongsTo(\App\Models\Product::class);
    }
    /*public function user()
   {
      return $this->belongsTo(\App\User::class);
   }*/
}
