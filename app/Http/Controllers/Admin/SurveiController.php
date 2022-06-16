<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\SurveiRequest;
use App\Models\Pekerjaan;
use App\Models\Pendidikan;
use App\Models\Survei;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Yajra\DataTables\DataTables;

class SurveiController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:survei-list|survei-create|survei-edit|survei-delete', ['only' => ['index', 'store']]);
        $this->middleware('permission:survei-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:survei-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:survei-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pages.survei.index');
    }

    public function getData()
    {

        if (auth()->user()->is_admin == "Y") {
            $sakips = Survei::join('pendidikan', 'survei.id_pendidikan', '=', 'pendidikan.id')
                ->join('pekerjaan', 'survei.id_pekerjaan', '=', 'pekerjaan.id')
                ->join('usia', 'survei.id_usia', '=', 'usia.id')
                ->join('waktu', 'survei.id_waktu', '=', 'waktu.id')
                ->join('opd', 'survei.id_opd', '=', 'opd.id')
                ->select(['survei.id', 'survei.created_at', 'pendidikan.nama as pendidikan', 'pekerjaan.nama as pekerjaan', 'survei.nama', 'opd.nama as opd', 'survei.jenis_layanan'])
                ->orderBy('survei.id', 'desc');
        } else {
            $sakips = Survei::join('pendidikan', 'survei.id_pendidikan', '=', 'pendidikan.id')
                ->join('pekerjaan', 'survei.id_pekerjaan', '=', 'pekerjaan.id')
                ->join('usia', 'survei.id_usia', '=', 'usia.id')
                ->join('waktu', 'survei.id_waktu', '=', 'waktu.id')
                ->join('opd', 'survei.id_opd', '=', 'opd.id')
                ->where('survei.id_pekerjaan', auth()->user()->pekerjaan[0]->id)
                ->select(['survei.id', 'survei.created_at', 'pendidikan.nama as pendidikan', 'pekerjaan.nama as pekerjaan', 'survei.nama', 'opd.nama as opd', 'survei.jenis_layanan'])
                ->orderBy('survei.id', 'desc');
        }

        return DataTables::of($sakips)
            ->addColumn('action', function ($row) {
                $btn = '<a href="/admin/survei/' . $row->id . '/edit" class="btn btn-info"><i class="fas fa-pencil-alt"></i></a> <a href="javascript:void(0)" title="Hapus" onclick="delete_data(' . "'" . $row->id . "'" . ')" class="btn btn-danger"><i class="fas fa-trash"></i></a>';
                return $btn;
            })
            ->editColumn('created_at', function ($row) {
                return $row->created_at ? with(new Carbon($row->created_at))->format('m/d/Y') : '';
            })
            ->rawColumns(['action'])
            ->make(true);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // dd(auth()->user()->pekerjaan()->name);
        $item = new Survei();
        $pendidikans = Pendidikan::get();
        $pekerjaans = Pekerjaan::get();
        return view('pages.survei.create', compact('item', 'pendidikans', 'pekerjaans'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SurveiRequest $request)
    {
        $data = $request->all();
        Survei::create($data);
        session()->flash('success', 'Survei was created.');
        return redirect()->route('survei.create');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $item = Survei::findOrFail($id);
        $pendidikans = Pendidikan::get();
        $pekerjaans = Pekerjaan::get();
        return view('pages.survei.edit', compact('item', 'pendidikans', 'pekerjaans'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(SurveiRequest $request, $id)
    {
        $data = $request->all();
        $item = Survei::findOrFail($id);
        $item->update($data);
        session()->flash('success', 'Survei was updated.');
        return redirect()->route('survei.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $item = Survei::findOrFail($id);
        $item->delete();
        return response()->json(['success' => 'Deleted successfully']);
    }
}
