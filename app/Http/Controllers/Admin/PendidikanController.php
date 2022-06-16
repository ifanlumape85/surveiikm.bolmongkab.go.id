<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\PendidikanRequest;
use App\Models\Pendidikan;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Yajra\DataTables\DataTables;

class PendidikanController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:pendidikan-list|pendidikan-create|pendidikan-edit|pendidikan-delete', ['only' => ['index', 'store']]);
        $this->middleware('permission:pendidikan-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:pendidikan-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:pendidikan-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pages.pendidikan.index');
    }

    public function getData()
    {
        $items = Pendidikan::select(['pendidikan.id', 'pendidikan.created_at', 'pendidikan.nama']);

        return DataTables::of($items)
            ->addColumn('action', function ($row) {
                $btn = '<a href="/admin/pendidikan/' . $row->id . '/edit" class="btn btn-info"><i class="fas fa-pencil-alt"></i></a> <a href="javascript:void(0)" title="Hapus" onclick="delete_data(' . "'" . $row->id . "'" . ')" class="btn btn-danger"><i class="fas fa-trash"></i></a>';
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
        $item = new Pendidikan();
        return view('pages.pendidikan.create', compact('item'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PendidikanRequest $request)
    {
        $data = $request->all();
        $data['slug'] = Str::slug($request->nama);
        Pendidikan::create($data);
        session()->flash('success', 'Pendidikan was created.');
        return redirect()->route('pendidikan.create');
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
        $item = Pendidikan::findOrFail($id);
        return view('pages.pendidikan.edit', compact('item'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(PendidikanRequest $request, $id)
    {
        $data = $request->all();
        $item = Pendidikan::findOrFail($id);
        $data['slug'] = Str::slug($request->nama);
        $item->update($data);
        session()->flash('success', 'Pendidikan was updated.');
        return redirect()->route('pendidikan.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $item = Pendidikan::findOrFail($id);
        $item->delete();
        return response()->json(['success' => 'Deleted successfully']);
    }
}
