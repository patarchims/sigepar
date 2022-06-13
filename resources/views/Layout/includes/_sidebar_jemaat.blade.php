<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
      <img src="{{asset('assets/img/Logo_HKI.jpg')}}" alt="HKI Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">HKI Parsoburan</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{asset('fileweb/' . Auth::user()->avatar)}}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">{{ Auth::user()->nama }} - Jemaat</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
  
               <li class="nav-item active">
                <a href="{{url('/Dashboard_profile')}}" class="nav-link">
                    <i class="nav-icon fas fa-users"></i>
                  <p>
                    Profile
                  </p>
                </a>
              </li>
               <li class="nav-item active">
                <a href="{{url('/daftarBabtis')}}" class="nav-link">
                    <i class="nav-icon fas fa-users"></i>
                  <p>
                    Daftar Babtis
                  </p>
                </a>
              </li>
               <li class="nav-item active">
                <a href="{{url('/peneguhanSidi')}}" class="nav-link">
                    <i class="nav-icon fas fa-users"></i>
                  <p>
                    Peneguhan sidi
                  </p>
                </a>
              </li>
               <li class="nav-item active">
                <a href="{{url('/pernikahan')}}" class="nav-link">
                    <i class="nav-icon fas fa-users"></i>
                  <p>
                    Pernikahan
                  </p>
                </a>
              </li>
       

          
          <li class="nav-item active">
            <a href="{{url('/logout')}}" class="nav-link">
                <i class="nav-icon fas  fa-sign-out"></i>
              <p>
                Log Out
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
    
  </aside>