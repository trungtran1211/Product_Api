<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    //
    protected $table = 'loaisanpham';
    protected $primarykey = 'cate_id';
    protected $guarded = [];
}
