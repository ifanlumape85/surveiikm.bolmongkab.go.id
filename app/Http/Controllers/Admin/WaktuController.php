<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\WaktuRequest;
use App\Models\Waktu;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Yajra\DataTables\DataTables;

class WaktuController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:waktu-list|waktu-create|waktu-edit|waktu-delete', ['only' => ['index', 'store']]);
        $this->middleware('permission:waktu-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:waktu-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:waktu-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pages.waktu.index');
    }

    public function getData()
    {
        $items = Waktu::select(['waktu.id', 'waktu.created_at', 'waktu.nama']);

        return DataTables::of($items)
            ->addColumn('action', function ($row) {
                $btn = '<a href="/admin/waktu/' . $row->id . '/edit" class="btn btn-info"><i class="fas fa-pencil-alt"></i></a> <a href="javascript:void(0)" title="Hapus" onclick="delete_data(' . "'" . $row->id . "'" . ')" class="btn btn-danger"><i class="fas fa-trash"></i></a>';
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
        $item = new Waktu();
        return view('pages.waktu.create', compact('item'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(WaktuRequest $request)
    {
        $data = $request->all();
        $data['slug'] = Str::slug($request->nama);
        Waktu::create($data);
        session()->flash('success', 'Waktu was created.');
        return redirect()->route('waktu.create');
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
        $item = Waktu::findOrFail($id);
        return view('pages.waktu.edit', compact('item'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(WaktuRequest $request, $id)
    {
        $data = $request->all();
        $item = Waktu::findOrFail($id);
        $data['slug'] = Str::slug($request->nama);
        $item->update($data);
        session()->flash('success', 'Waktu was updated.');
        return redirect()->route('waktu.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $item = Waktu::findOrFail($id);
        $item->delete();
        return response()->json(['success' => 'Deleted successfully']);
    }
}
