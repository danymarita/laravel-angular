<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }

    public function balikKalimat(){
        return view('balik-kalimat');
    }

    public function balikKalimatProses(Request $request){
        $validation = $this->validate($request, [
    		'kalimat' => 'required|string'
        ]);
        
        $split = str_split($request->kalimat);
        $count = count($split) - 1;
        $kalimat_balik = '';
        for($i=$count; $i>=0; $i--)
        {
            $kalimat_balik .= $split[$i];
        }

        return redirect()->route('balik-kalimat')
                ->with('type', 'success')
                ->with('kalimat_asli', $request->kalimat)
                ->with('kalimat_balik', $kalimat_balik)
    			->with('message', 'Kalimat yang Anda masukkan sudah dibalik.');
    }
}
