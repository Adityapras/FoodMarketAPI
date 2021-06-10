<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="{{url('template')}}/img/favicon.png">

    <title>FlatLab - Flat & Responsive Bootstrap Admin Template</title>

    <!-- Bootstrap core CSS -->
    <link href="{{url('template')}}/css/bootstrap.min.css" rel="stylesheet">
    <link href="{{url('template')}}/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="{{url('template')}}/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="{{url('template')}}/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <link rel="stylesheet" href="{{url('template')}}/css/owl.carousel.css" type="text/css">

    <!--right slidebar-->
    <link href="{{url('template')}}/css/slidebars.css" rel="stylesheet">

    <!-- Custom styles for this template -->

    <link href="{{url('template')}}/css/style.css" rel="stylesheet">
    <link href="{{url('template')}}/css/style-responsive.css" rel="stylesheet" />

  </head>

  <body>

  <section id="container">

    <!--header start-->
        @include('admin.layouts.header')
    <!--header end-->

    <!--sidebar start-->
        @include('admin.layouts.sidebar')
    <!--sidebar end-->
    
    <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
                @yield('content')
          </section>
      </section>
      <!--main content end-->

      <!-- Right Slidebar start -->
      
      <!-- Right Slidebar end -->

      <!--footer start-->
      {{-- <footer class="site-footer">
          <div class="text-center">
              2018 &copy; FlatLab by VectorLab.
              <a href="{{url('template')}}/#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer> --}}
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="{{url('template')}}/js/jquery.js"></script>
    <script src="{{url('template')}}/js/bootstrap.bundle.min.js"></script>
    <script class="include" type="text/javascript" src="{{url('template')}}/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="{{url('template')}}/js/jquery.scrollTo.min.js"></script>
    <script src="{{url('template')}}/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="{{url('template')}}/js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="{{url('template')}}/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="{{url('template')}}/js/owl.carousel.js" ></script>
    <script src="{{url('template')}}/js/jquery.customSelect.min.js" ></script>
    <script src="{{url('template')}}/js/respond.min.js" ></script>

    <!--right slidebar-->
    <script src="{{url('template')}}/js/slidebars.min.js"></script>

    <!--common script for all pages-->
    <script src="{{url('template')}}/js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="{{url('template')}}/js/sparkline-chart.js"></script>
    <script src="{{url('template')}}/js/easy-pie-chart.js"></script>
    <script src="{{url('template')}}/js/count.js"></script>

  <script>

      //owl carousel

      $(document).ready(function() {
          $("#owl-demo").owlCarousel({
              navigation : true,
              slideSpeed : 300,
              paginationSpeed : 400,
              singleItem : true,
			  autoPlay:true

          });
      });

      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

      $(window).on("resize",function(){
          var owl = $("#owl-demo").data("owlCarousel");
          owl.reinit();
      });

  </script>

  </body>
</html>
