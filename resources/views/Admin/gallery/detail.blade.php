@extends('Layout.Admin')
@section('content')
@section('title','SIGEPAR  | Data Jemaat')



<div class="content-wrapper" style="min-height: 1302.12px;">
    
 
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Data Gallery</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item "><a href="Dashboard">Dashboard</a></li>
              <li class="breadcrumb-item ">Curch Data</li>
              <li class="breadcrumb-item active"><a href="Dashboard">Data Gallery</a></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Table Data Gallery HKI</h3> <br>
                <a href="{{url('/tambahGallery')}}" class="btn btn-sm bg-success">
                    <i class="fas fa-users fas-sm"></i> Tambah Data Gallery
                  </a>               
                <div class="card-tools">
                  <form action="/pengumuman" method="GET">
                  <div class="input-group input-group-sm" style="width: 150px;" >                  
                    <input type="text" name="cari" class="form-control float-right" placeholder="Search" >
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
                      <th>Nama Gallery </th>
                      <th>Gambar Album</th>
                      <th>Action</th>
                    </tr>
                   
                  </thead>
                  <tbody>
                    <?php if($data_jemaat == null) { ?> 
                      <tr >
                        <td colspan="4" class="text-center danger"> Data Kosong</td>
                      </tr>                      
                    <?php } ?>
                      <?php if($data_jemaat != null) { ?> 
                    @foreach ($data_jemaat as $jemaat)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{$jemaat->nama_album}}</td>
                        <td>
                          <div class="text-center">
                             <img height="50" width="50" src="{{asset('fileweb/' .$jemaat->gallery_album)}}" class="rounded" alt="...">
                          </div>
                        </td>
                        <td> 
                            <a href="/gallery/{{$jemaat->id}}/edit" class="btn btn-warning btn-sm"><i class="fa-solid fa-user-pen"></i></a>
                            <a href="/gallery/{{$jemaat->id}}/detail" class="btn btn-success btn-sm"><i class="nav-icon fas fa-book"></i></a>
                             <a href="/gallery/{{$jemaat->id}}/delete" class="btn btn-danger btn-sm" onclick="return confirm('Apakah anda Akan Menghapus Data Gallery Ini?')"><i class="fa-solid fa-trash-can"></i></a>
                        </td>

                    </tr>
                    @endforeach
                     <?php } ?>
                   

                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
  
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>


  

  @endsection