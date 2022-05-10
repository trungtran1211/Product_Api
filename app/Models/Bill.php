<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Bill extends Model
{
    protected $fillable = [
    	'bil_id',
    	'tennguoinhan',
    	'sodt',
    	'diachi',
    	'tongtien',
    	'trangthai'
    ];
    protected $table = 'hoadon';
    protected $primarykey = 'bil_id';
    protected $guarded = [];

    public function invoiceDetails()
    {
    	return $this->hasMany(\App\Models\BillDetail::class);
    }

    /*public function customer()
    {
      return $this->belongsTo(\App\Model\Customer::class);
    }*/
    public function user()
   {
      return $this->belongsTo(\App\User::class);
   }
}
