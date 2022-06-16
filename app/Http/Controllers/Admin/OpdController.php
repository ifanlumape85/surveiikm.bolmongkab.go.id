<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\OpdRequest;
use App\Models\Opd;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Yajra\DataTables\DataTables;

class OpdController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:opd-list|opd-create|opd-edit|opd-delete', ['only' => ['index', 'store']]);
        $this->middleware('permission:opd-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:opd-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:opd-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pages.opd.index');
    }

    public function getData()
    {
        $items = Opd::select(['opd.id', 'opd.created_at', 'opd.nama']);

        return DataTables::of($items)
            ->addColumn('action', function ($row) {
                $btn = '<a href="/admin/opd/' . $row->id . '/edit" class="btn btn-info"><i class="fas fa-pencil-alt"></i></a> <a href="javascript:void(0)" title="Hapus" onclick="delete_data(' . "'" . $row->id . "'" . ')" class="btn btn-danger"><i class="fas fa-trash"></i></a>';
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
        $item = new Opd();
        return view('pages.opd.create', compact('item'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(OpdRequest $request)
    {
        $data = $request->all();
        $data['slug'] = Str::slug($request->nama);
        Opd::create($data);
        session()->flash('success', 'OPD was created.');
        return redirect()->route('opd.create');
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
        $item = Opd::findOrFail($id);
        return view('pages.opd.edit', compact('item'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(OpdRequest $request, $id)
    {
        $data = $request->all();
        $item = Opd::findOrFail($id);
        $data['slug'] = Str::slug($request->nama);
        $item->update($data);
        session()->flash('success', 'OPD was updated.');
        return redirect()->route('opd.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $item = Opd::findOrFail($id);
        $item->delete();
        return response()->json(['success' => 'Deleted successfully']);
    }
}
