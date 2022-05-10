<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class YeuThich extends Model
{
    protected $fillable = [
    	'id',
    	'masp',
    	'mand',
    	'hinhanh',
    	'tensp',
    	'dongia'
    ];
    protected $table = 'spyeuthich';
    protected $primarykey = 'id';
    protected $guarded = [];
}
