<?php

namespace App\Http\Controllers;

use App\Http\Requests\SurveiRequest;
use App\Models\Opd;
use App\Models\Pekerjaan;
use App\Models\Pendidikan;
use App\Models\Survei;
use App\Models\Usia;
use App\Models\Waktu;
use Yajra\DataTables\DataTables;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function survei()
    {
        $opds = Opd::all();
        $pendidikans = Pendidikan::all();
        $pekerjaans = Pekerjaan::all();
        $usias = Usia::all();
        $waktus = Waktu::all();
        return view('survei', compact('opds', 'pendidikans', 'pekerjaans', 'usias', 'waktus'));
    }

    public function store(SurveiRequest $request)
    {
        // dd($request->all());
        $data = $request->all();
        Survei::create($data);
        return redirect()->back()->with('success', 'Survei berhasil dikirim.');
    }
}
