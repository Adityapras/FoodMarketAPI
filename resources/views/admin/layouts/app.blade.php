<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="{{ url('template') }}/img/favicon.png">

    <title>{{ $data['title'] }}</title>

    <!-- Bootstrap core CSS -->
    <link href="{{ url('template') }}/css/bootstrap.min.css" rel="stylesheet">
    <link href="{{ url('template') }}/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="{{ url('template') }}/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="{{ url('template') }}/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet"
        type="text/css" media="screen" />
    <link rel="stylesheet" href="{{ url('template') }}/css/owl.carousel.css" type="text/css">

    <!--right slidebar-->
    <link href="{{ url('template') }}/css/slidebars.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="{{ url('template') }}/assets/fuelux/css/tree-style.css" />


    <!-- Custom styles for this template -->

    <link href="{{ url('template') }}/css/style.css" rel="stylesheet">
    <link href="{{ url('template') }}/css/style-responsive.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css"
        href="{{ url('template') }}/assets/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css"
        href="{{ url('template') }}/assets/bootstrap-timepicker/compiled/timepicker.css" />
    <link rel="stylesheet" type="text/css"
        href="{{ url('template') }}/assets/bootstrap-daterangepicker/daterangepicker-bs3.css" />
    <link rel="stylesheet" type="text/css"
        href="{{ url('template') }}/assets/bootstrap-datetimepicker/css/datetimepicker.css" />
    <link rel="stylesheet" type="text/css"
        href="{{ url('template') }}/assets/colorpicker/css/bootstrap-colorpicker.min.css" />
    <link rel="stylesheet" type="text/css" href="{{ url('template') }}/assets/nestable/jquery.nestable.css" />

</head>

<body>
    <div>
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
    </div>

    {{-- <script src="https://cdn.jsdelivr.net/npm/vue@2.6.14/dist/vue.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script>
        const baseURL = window.location.origin;
    </script>

    @yield('jscontent') --}}

    @include('admin.layouts.footer')

</body>

</html>
