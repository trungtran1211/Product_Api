<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ncc extends Model
{
    protected $fillable = [
    	'mancc'
    ];
    protected $table = 'nhacungcap';
    protected $primarykey = 'mancc';
    protected $guarded = [];
}
