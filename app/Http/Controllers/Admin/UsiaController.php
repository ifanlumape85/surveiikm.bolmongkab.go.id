<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\UsiaRequest;
use App\Models\Usia;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Yajra\DataTables\DataTables;

class UsiaController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:usia-list|usia-create|usia-edit|usia-delete', ['only' => ['index', 'store']]);
        $this->middleware('permission:usia-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:usia-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:usia-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pages.usia.index');
    }

    public function getData()
    {
        $items = Usia::select(['usia.id', 'usia.created_at', 'usia.nama']);

        return DataTables::of($items)
            ->addColumn('action', function ($row) {
                $btn = '<a href="/admin/usia/' . $row->id . '/edit" class="btn btn-info"><i class="fas fa-pencil-alt"></i></a> <a href="javascript:void(0)" title="Hapus" onclick="delete_data(' . "'" . $row->id . "'" . ')" class="btn btn-danger"><i class="fas fa-trash"></i></a>';
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
        $item = new Usia();
        return view('pages.usia.create', compact('item'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UsiaRequest $request)
    {
        $data = $request->all();
        $data['slug'] = Str::slug($request->nama);
        Usia::create($data);
        session()->flash('success', 'Usia was created.');
        return redirect()->route('usia.create');
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
        $item = Usia::findOrFail($id);
        return view('pages.usia.edit', compact('item'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UsiaRequest $request, $id)
    {
        $data = $request->all();
        $item = Usia::findOrFail($id);
        $data['slug'] = Str::slug($request->nama);
        $item->update($data);
        session()->flash('success', 'Usia was updated.');
        return redirect()->route('usia.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $item = Usia::findOrFail($id);
        $item->delete();
        return response()->json(['success' => 'Deleted successfully']);
    }
}
