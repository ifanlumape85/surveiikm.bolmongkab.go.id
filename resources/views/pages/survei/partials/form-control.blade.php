<div class="card-body">
    @if(session()->has('success'))
    <div class="alert alert-success">
        {{ session()->get('success') }}
    </div>
    @endif
    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif
    <div class="form-group">
        <label for="id_kategori">Kategori</label>
        <select class="form-control select2" name="id_kategori" style="width: 100%;">
            <option value="" selected disabled>Pilih satu</option>
            @foreach($kategoris as $kategori)
            <option @if($item->id_kategori == $kategori->id || old('id_kategori') == $kategori->id) selected @endif value="{{ $kategori->id }}">{{ $kategori->nama }}</option>
            @endforeach
        </select>
    </div>
    @can('list-opd')
    <div class="form-group">
        <label for="id_opd">OPD</label>
        <select class="form-control select2" name="id_opd" style="width: 100%;">
            <option value="" selected disabled>Pilih satu</option>
            @foreach($opds as $opd)
            <option @if($item->id_opd == $opd->id || old('id_opd') == $opd->id) selected @endif value="{{ $opd->id }}">{{ $opd->nama }}</option>
            @endforeach
        </select>
    </div>
    @else
    <input type="hidden" name="id_opd" value="{{ auth()->user()->opd[0]->id }}">
    @endcan
    <div class="form-group">
        <label for="nama">Nama</label>
        <input type="text" class="form-control" id="nama" name="nama" placeholder="Nama" value="{{ old('nama') ?? $item->nama }}">
    </div>
    <div class="form-group">
        <label for="tahun">Tahun</label>
        <input type="number" class="form-control" id="tahun" name="tahun" placeholder="tahun" value="{{ old('tahun') ?? $item->tahun }}">
    </div>

    @if(Storage::disk('public')->exists($item->foto ?? null))
    <iframe src="{{ Storage::url($item->foto ?? null) }}" height="600px" width="100%"></iframe>
    @endif
    <div class="form-group">
        <label for="foto">PDF (Max.20MB)</label>
        <div class="input-group">
            <div class="custom-file">
                <input type="file" class="custom-file-input" id="foto" name="foto">
                <label class="custom-file-label" for="foto">Pilih file</label>
            </div>
        </div>
    </div>
</div>
<!-- /.card-body -->

<div class="card-footer">
    <button type="submit" class="btn btn-primary">{{ $submit ?? 'Create' }}</button>
</div>