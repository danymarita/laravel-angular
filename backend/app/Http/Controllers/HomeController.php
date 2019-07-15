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

    public function testLogika(){
        return view('test-logika');
    }

    public function testLogikaProses(Request $request){
        $deret_angka = array(1,100,200,400,600,800,1000,5000,10000,15000,20000,25000,30000,40000,50000,100000,200000,300000,500000,1000000,2000000);
        $validation = $this->validate($request, [
    		'soal' => 'required|numeric'
        ]);
        $type = "success";
        $message = 'Berikut hasil test logika :';
        switch ($request->soal){
            case 1:
                $result = $deret_angka;
            break;
            case 2:
                $result = array_slice($deret_angka,0,7);
            break;
            case 3:
                $result = array_slice($deret_angka,0,13);
            break;
            default:
                $type = "danger";
                $message = 'Pilihan soal Anda tidak terdapat pada sistem.';
        }
        // dd($result);
        return redirect()->route('test-logika')
                ->with('type', $type)
                ->with('deret_angka', $result)
                ->with('message', $message)->withInput();
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
    			->with('message', 'Kalimat yang Anda masukkan sudah dibalik.')->withInput();
    }
}
