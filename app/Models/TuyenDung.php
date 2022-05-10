<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TuyenDung extends Model
{
    //
    protected $fillable = [
    	'id',
    	'tieude',
    	'hinhanh',
    	'mota',
    	'lienhe',
    	'thoigian'
    ];
    protected $table = 'tuyendung';
    protected $primarykey = 'id';
    protected $guarded = [];
}
