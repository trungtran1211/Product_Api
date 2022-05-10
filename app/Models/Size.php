<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Size extends Model
{
     protected $fillable = [
    	'id',
    	'sokichco'
    ];
    protected $table = 'kichco';
    protected $primarykey = 'id';
    protected $guarded = [];

    public function product()
    {
    	return $this->belongstoMany(\App\Models\Product::class);
    }
}
