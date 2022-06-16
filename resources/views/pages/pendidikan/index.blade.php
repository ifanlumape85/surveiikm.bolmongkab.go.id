@extends('layouts.backend.app')
@push('addon-script')
<script>
    $(function() {
        $('#data-table').DataTable({
            processing: true,
            serverSide: true,
            autoWidth: false,
            ajax: '/admin/pendidikan/get_data',
            columns: [{
                    data: 'id',
                    name: 'pendidikan.id',
                    visible: false
                },
                {
                    data: 'created_at',
                    name: 'pendidikan.created_at'
                },
                {
                    data: 'nama',
                    name: 'pendidikan.nama'
                },
                {
                    data: 'action',
                    name: 'action',
                    orderable: false,
                    searchable: false
                }
            ]
        });
    });

    function delete_data(id) {

        if (confirm('Are you sure delete this  data?')) {

            $.ajax({
                url: "/admin/pendidikan/" + id,
                type: "DELETE",
                data: {
                    "_token": "{{ csrf_token() }}",
                    "id": id
                },
                success: function(data) {
                    $('#data-table').DataTable().ajax.reload();
                },
                error: function(xhr, status, error) {
                    $('#data-table').DataTable().ajax.reload();
                }
            });
        }
    }
</script>
@endpush
@section('content')
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="d-flex justify-content-between">
                            <h3 class="card-title">Pendidikan</h3>
                            <div class="card-tools d-flex justify-content-between">

                                @can('pendidikan-create')
                                <a href="{{ route('pendidikan.create') }}" class="ml-2 btn btn-primary btn-sm">
                                    <i class="fas fa-plus"></i> Create
                                </a>
                                @endcan
                            </div>
                        </div>

                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        @if(session()->has('success'))
                        <div class="alert alert-success">
                            {{ session()->get('success') }}
                        </div>
                        @endif
                        <table class="table table-striped" id="data-table">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Tanggal</th>
                                    <th>pendidikan</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>No</th>
                                    <th>Tanggal</th>
                                    <th>Pendidikan</th>
                                    <th>Action</th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer clearfix">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection