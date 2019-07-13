<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests\SignupRequest;
use App\User;
use Hash;
use JWTAuth;
class APIController extends Controller
{
	

    public function register(SignupRequest $request)
    {        
    	$input = $request->all();
    	$input['password'] = Hash::make($input['password']);
    	User::create($input);
        // return response()->json(['result'=>true]);
        return $this->login($request);
    }
    

    public function login(Request $request)
    {
    	$input = $request->all();
    	if (!$token = JWTAuth::attempt($input)) {
            return response()->json(['error' => 'Email atau password yang Anda masukkan salah'], 401);
        }
        return $this->respondWithToken($token);
    }
    

    public function get_user_details(Request $request)
    {
    	$input = $request->all();
    	$user = JWTAuth::toUser($request->token);
        return response()->json(['result' => $user]);
    }

    public function logout(Request $request)
    {
        JWTAuth::invalidate($request->token);

        return response()->json(['message' => 'Successfully logged out']);
    }

    public function refresh(Request $request){
        $user = JWTAuth::toUser($request->token);
        $token = JWTAuth::refresh($request->token);
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'user' => $user->name
        ]);
    }
    
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'user' => auth()->user()->name
        ]);
    }
}