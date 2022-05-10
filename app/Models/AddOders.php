<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AddOders extends Model
{
    protected $fillable = [
    	'mactpn',
    	'masp',
    	'soluong',
    	'dongia'
    ];
    protected $table = 'chitietphieunhap';
    protected $primarykey = 'mactpn';
    protected $guarded = [];
}
