<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
	protected $fillable = [
    	'tensanpham'
    ];
    protected $table = 'sanpham';
    protected $primarykey = 'prod_id';
    protected $guarded = [];

    public function size()
    {
        return $this->belongsToMany(\App\Models\Size::class);
    }
}
