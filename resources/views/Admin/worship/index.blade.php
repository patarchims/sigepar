@extends('Layout.Admin')
@section('content')
@section('title','SIGEPAR  | Data Jemaat')



<div class="content-wrapper" style="min-height: 1302.12px;">
    
 
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Data Worship</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item "><a href="Dashboard">Dashboard</a></li>
              <li class="breadcrumb-item active"><a href="Dashboard">Data Woship</a></li>
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
                <h3 class="card-title">Table Data Woship HKI</h3> <br>
                <a href="{{url('/worship/tambah')}}" class="btn btn-sm bg-success">
                    <i class="fas fa-users fas-sm"></i> Tambah Data Woship
                  </a>
               
                <div class="card-tools">
                  <form action="/DataPengurus_Gereja/create" method="GET">
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
       
              
                      @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
              @endif

                  @if(session('success'))
                  <div class="alert alert-success" role="alert">
                      {{session('success')}}
                  </div>
                  @endif

                <table class="table table-head-fixed text-nowrap">
                  <thead text='center'>
                    <tr >
                      <th>No</th>
                      <th>Judul </th>
                      <th>Hari</th>
                      <th>Tanggal</th>
                      <th>Tema</th>                   
                      <th>Aktif</th>                   
                      <th>Procedure</th>
                      <th>Action</th>
                    </tr>
                   
                  </thead>
                  <tbody>
                    @if($data == null) 
                    <tr> 
                      <td colspan="7">Tidak Ada data</td>
                    </tr>
                    @endif

                    @if ($data != null )
                    <tr>
                      @foreach ($data as $jemaat)
                        <td>{{$loop->iteration}}</td>
                        <td>{{$jemaat->judul}}</td>
                        <td>{{$jemaat->hari}}</td>
                        <td>{{$jemaat->tanggal}}</td>
                        <td>{{Str::words($jemaat->tema, 2, '...')}}</td>
                        <td>
                          <?php if($jemaat->is_active == 0) echo '
                             <a href="/worship/{{$jemaat->id}}/edit" class="btn btn-secondary btn-sm">Tidak Aktif</a>';
                             ?>
                          <?php if($jemaat->is_active == 1) echo '
                             <a href="/worship/{{$jemaat->id}}/edit" class="btn btn-success btn-sm"> Aktif</a>';
                             ?>
                        </td>
                        <td>
                                <a href="/procedure/{{$jemaat->id}}/index" class="btn btn-success btn-sm"><i class="nav-icon fas fa-book"></i></a>
                        </td>           
                        <td> 
                            <a href="/worship/{{$jemaat->id}}/edit" class="btn btn-warning btn-sm"><i class="fa-solid fa-user-pen"></i></a>
                      
                            <a href="/worship/{{$jemaat->id}}/delete" class="btn btn-danger btn-sm" onclick="return confirm('Apakah anda Akan Menghapus Data Jemaat Ini?')"><i class="fa-solid fa-trash-can"></i></a>
                        </td>

                    </tr>
                    @endforeach
                    @endif
                   

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