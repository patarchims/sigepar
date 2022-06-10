@extends('Layout.Admin')
@section('content')
@section('title','SIGEPAR | Data Keuangan')
<div class="content-wrapper" style="min-height: 2171.6px;">
<section class="content">
    <div class="container-fluid">


        <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Table Data Keuangan Jemaat HKI</h3> <br>
                  <a href="{{url('/TambahData_Jemaat')}}" class="btn btn-sm bg-success">
                      <i class="fas fa-users fas-sm"></i> Tambah Data Keuangan
                    </a>
                 
                  <div class="card-tools">
                    <form action="/Data_Jemaat" method="GET">
                    <div class="input-group input-group-sm" style="width: 150px;">
                    
                      <input type="text" name="cari" class="form-control float-right" placeholder="Search">
  
                      <div class="input-group-append">
                        <button type="submit" class="btn btn-default">
                          <i class="fas fa-search"></i>
                        </button>
                      </form>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- /.card-header -->
                <div class="card-body table-responsive p-0" style="height: 500px;">
                  @if(session('sukses'))
                  <div class="alert alert-success" role="alert">
                      {{session('sukses')}}
                  </div>
                  @endif
                  <table class="table table-head-fixed text-nowrap">
                    <thead text='center'>
                      <tr >
                        <th>No</th>
                        <th>Nama </th>
                        <th>Jumlah Pemberian</th>
                        <th>Tanggal pemberian</th>
                        <th>Keterangan</th>
                        <th>Action</th>
                      </tr>
                     
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>Sayoni</td>
                        <td>Rp.100.000</td>
                        <td>11/12/2020</td>
                        <td>Dibagi ke Huria Rp.50.000; Pendeta Rp.50.000</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <!-- /.card-body -->
              </div>



    </div>
</section>
</div>

@endsection