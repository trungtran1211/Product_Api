<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Oders extends Model
{
    protected $fillable = [
    	'manpn',
    	'mancc',
    	'manv',
    	'ngaynhap',
    	'tongtien'
    ];
    protected $table = 'phieunhap';
    protected $primarykey = 'mapn';
    protected $guarded = [];
}
