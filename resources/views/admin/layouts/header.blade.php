 <!--header start-->
 <header class="header white-bg">
     <div class="sidebar-toggle-box">
         <i class="fa fa-bars"></i>
     </div>
     <!--logo start-->
     <a href="{{ url('template') }}/index.html" class="logo">Flat<span>lab</span></a>
     <!--logo end-->
     <div class="top-nav ">
         <!--search & user info start-->
         <ul class="nav pull-right top-menu">
             <li>
                 <input type="text" class="form-control search" placeholder="Search">
             </li>
             <!-- user login dropdown start-->
             <li class="dropdown">
                 <a data-toggle="dropdown" class="dropdown-toggle" href="{{ url('template') }}/#">
                     <img alt="" src="{{ url('template') }}/img/avatar1_small.jpg">
                     <span class="username">Jhon Doue</span>
                     <b class="caret"></b>
                 </a>
                 <ul class="dropdown-menu extended logout dropdown-menu-right">
                     <div class="log-arrow-up"></div>
                     <li><a href="{{ url('template') }}/#"><i class=" fa fa-suitcase"></i>Profile</a></li>
                     <li><a href="{{ url('template') }}/#"><i class="fa fa-cog"></i> Settings</a></li>
                     <li><a href="{{ url('template') }}/#"><i class="fa fa-bell-o"></i> Notification</a></li>
                     <li>
                         <form method="POST" action="{{ route('logout') }}">
                             @csrf
                             <a href="{{ route('logout') }}" onclick="event.preventDefault();
                           this.closest('form').submit();"><i class="fa fa-key"></i> Log Out </a>
                         </form>
                     </li>
                 </ul>
             </li>
             <li class="sb-toggle-right">
                 <i class="fa  fa-align-right"></i>
             </li>
             <!-- user login dropdown end -->
         </ul>
         <!--search & user info end-->
     </div>
 </header>
 <!--header end-->
