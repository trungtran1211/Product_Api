<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;
use Symfony\Component\HttpFoundation\Response;

class LoginCustomController extends Controller
{
    // public function getlogincustom(){
    //      $title = 'login-custom';
    //     return view('frontend.login1', compact('title'));
    // }

	
	public function postlogincustom(Request $request){
        $credentials = $request->only('email', 'password');
        $token = null;
        try {
           if (!$token = JWTAuth::attempt($credentials)) {

            return response()->json(['invalid_email_or_password'], 422);
           }
        } catch (JWTAuthException $e) {
            return response()->json(['failed_to_create_token'], 500);
        }
        return response()->json(compact('token'));
    }

    // public function getLogout1(){
    //      Auth::logout();
    //     return back();
    // }
    public function getLogout1(Request $request)
    {
        //valid credential
        $validator = Validator::make($request->only('token'), [
            'token' => 'required'
        ]);

        //Send failed response if request is not valid
        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 401);
        }

		//Request is validated, do logout        
        try {
            JWTAuth::invalidate($request->token);
            return response()->json([
                'success' => true,
                'message' => 'User has been logged out'
            ]);
        } catch (JWTException $exception) {
            return response()->json([
                'success' => false,
                'message' => 'Sorry, user cannot be logged out'
            ], Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }
    
    public function getUserInfo(Request $request){
        $user = JWTAuth::toUser($request->token);
        return response()->json(['result' => $user]);
    }
    

    
    public function postregrister(Request $request){
    	
        $data = DB::table('users')->insert([
            'name' => $request->name,
            'email' => $request->email,
            'address' => $request->address,
            'phone'=>$request->phone,
            'password' => bcrypt($request->password),
            'level' => 2
        
        ]);

        return response()->json([
            'status'=> 200,
            'message'=> 'User created successfully',
            'data'=>$data
        ]);
    }

    // public function getSignUp(){
    //      $title = 'signup';
    //     return view('frontend.signup', compact('title'));
    // }

}

