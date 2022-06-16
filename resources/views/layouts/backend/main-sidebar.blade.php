 <!-- Main Sidebar Container -->
 <aside class="main-sidebar sidebar-dark-primary elevation-4">
     <!-- Brand Logo -->
     <a href="{{ route('dashboard') }}" class="brand-link">
         <span class="brand-text font-weight-light ml-3">SURVEI IKM</span>
     </a>

     <!-- Sidebar -->
     <div class="sidebar">
         <!-- Sidebar user panel (optional) -->
         <div class="user-panel mt-3 pb-3 mb-3 d-flex">
             <div class="image">
                 <img src="{{ auth()->user()->gravatar() }}" class="img-circle elevation-2" alt="User Image">
             </div>
             <div class="info">
                 <a href="{{ route('user.edit', auth()->user()->id) }}" class="d-block">{{ auth()->user()->name }}</a>
             </div>
         </div>
         @auth
         <!-- Sidebar Menu -->
         <nav class="mt-2">
             <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                 <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

                 <li class="nav-item">
                     <a href="#" class="nav-link">
                         <i class="nav-icon far fa-circle text-danger"></i>
                         <p>
                             Survei IKM
                         </p>
                     </a>
                     <ul class="nav nav-treeview">
                         @can('survei-list')
                         <li class="nav-item">
                             <a href="{{ route('survei.index') }}" class="nav-link">
                                 <i class="far fa-circle nav-icon"></i>
                                 <p>
                                     List IKM
                                 </p>
                             </a>
                         </li>
                         @endcan
                     </ul>
                 </li>

                 @if(auth()->user()->is_admin == "Y")
                 <li class="nav-item">
                     <a href="#" class="nav-link">
                         <i class="nav-icon far fa-circle text-danger"></i>
                         <p>
                             Referensi
                         </p>
                     </a>
                     <ul class="nav nav-treeview">
                         @can('pekerjaan-list')
                         <li class="nav-item">
                             <a href="{{ route('pekerjaan.index') }}" class="nav-link">
                                 <i class="far fa-circle nav-icon"></i>
                                 <p>
                                     Pekerjaan
                                 </p>
                             </a>
                         </li>
                         @endcan
                         @can('pendidikan-list')
                         <li class="nav-item">
                             <a href="{{ route('pendidikan.index') }}" class="nav-link">
                                 <i class="far fa-circle nav-icon"></i>
                                 <p>
                                     Pendidikan
                                 </p>
                             </a>
                         </li>
                         @endcan
                         @can('opd-list')
                         <li class="nav-item">
                             <a href="{{ route('opd.index') }}" class="nav-link">
                                 <i class="far fa-circle nav-icon"></i>
                                 <p>
                                     OPD
                                 </p>
                             </a>
                         </li>
                         @endcan
                         @can('usia-list')
                         <li class="nav-item">
                             <a href="{{ route('usia.index') }}" class="nav-link">
                                 <i class="far fa-circle nav-icon"></i>
                                 <p>
                                     Usia
                                 </p>
                             </a>
                         </li>
                         @endcan
                         @can('waktu-list')
                         <li class="nav-item">
                             <a href="{{ route('waktu.index') }}" class="nav-link">
                                 <i class="far fa-circle nav-icon"></i>
                                 <p>
                                     Waktu
                                 </p>
                             </a>
                         </li>
                         @endcan
                     </ul>
                 </li>

                 <li class="nav-item">
                     <a href="#" class="nav-link">
                         <i class="nav-icon far fa-circle text-danger"></i>
                         <p>
                             Pengaturan
                         </p>
                     </a>
                     <ul class="nav nav-treeview">
                         @can('role-list')
                         <li class="nav-item">
                             <a href="{{ route('roles.index') }}" class="nav-link">
                                 <i class="far fa-circle nav-icon"></i>
                                 <p>
                                     Roles
                                 </p>
                             </a>
                         </li>
                         @endcan
                         @can('user-list')
                         <li class="nav-item">
                             <a href="{{ route('user.index') }}" class="nav-link">
                                 <i class="far fa-circle nav-icon"></i>
                                 <p>
                                     Users
                                 </p>
                             </a>
                         </li>
                         @endcan
                     </ul>
                 </li>
                 @endif
                 <li class="nav-item">
                     <a href="{{ route('logout') }}" class="nav-link" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                         <i class="nav-icon fas fa-sign-out-alt text-danger"></i>
                         <p>
                             {{ __('Logout') }}
                         </p>
                     </a>

                 </li>
             </ul>
             <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                 @csrf
             </form>
         </nav>
         <!-- /.sidebar-menu -->
         @endauth
     </div>
     <!-- /.sidebar -->
 </aside>