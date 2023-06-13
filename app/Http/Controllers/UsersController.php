<?php
namespace App\Http\Controllers;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class UserController extends Controller
{   
    private $user;

    public function __construct(User $user){
        $this->user = $user;
    }
} 