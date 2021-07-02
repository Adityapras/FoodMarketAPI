<!-- js placed at the end of the document so the pages load faster -->
<script src="{{ url('template') }}/js/jquery.js"></script>
<script src="{{ url('template') }}/js/bootstrap.bundle.min.js"></script>
<script class="include" type="text/javascript" src="{{ url('template') }}/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="{{ url('template') }}/js/jquery.scrollTo.min.js"></script>
<script src="{{ url('template') }}/js/jquery.nicescroll.js" type="text/javascript"></script>
<script src="{{ url('template') }}/assets/nestable/jquery.nestable.js"></script>
{{-- <script src="{{ url('template') }}/js/nestable.js"></script> --}}
<script src="{{ url('template') }}/js/jquery.sparkline.js" type="text/javascript"></script>
<script src="{{ url('template') }}/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
<script src="{{ url('template') }}/js/owl.carousel.js"></script>
<script src="{{ url('template') }}/js/jquery.customSelect.min.js"></script>
<script src="{{ url('template') }}/js/respond.min.js"></script>
<script type="text/javascript" src="{{ url('template') }}/assets/bootstrap-datepicker/js/bootstrap-datepicker.js">
</script>
<script type="text/javascript"
src="{{ url('template') }}/assets/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="{{ url('template') }}/assets/bootstrap-daterangepicker/moment.min.js"></script>
<script type="text/javascript" src="{{ url('template') }}/assets/bootstrap-daterangepicker/daterangepicker.js">
</script>
<script type="text/javascript" src="{{ url('template') }}/assets/colorpicker/js/bootstrap-colorpicker.min.js">
</script>
<script type="text/javascript" src="{{ url('template') }}/assets/bootstrap-timepicker/js/bootstrap-timepicker.js">
</script>
<script type="text/javascript" src="{{ url('template') }}/assets/jquery-multi-select/js/jquery.multi-select.js">
</script>
<script type="text/javascript" src="{{ url('template') }}/assets/jquery-multi-select/js/jquery.quicksearch.js">
</script>
<!--right slidebar-->
<script src="{{ url('template') }}/js/slidebars.min.js"></script>

<!--common script for all pages-->
<script src="{{ url('template') }}/js/common-scripts.js"></script>

<!--script for this page-->
<script src="{{ url('template') }}/js/sparkline-chart.js"></script>
<script src="{{ url('template') }}/js/easy-pie-chart.js"></script>
<script src="{{ url('template') }}/js/count.js"></script>

<script src="{{ url('template') }}/assets/fuelux/js/tree.min.js"></script>
<script src="{{ url('template') }}/js/tree.js"></script>
<!--pickers script-->
<script src="{{ url('template') }}/js/pickers/init-date-picker.js"></script>
<script src="{{ url('template') }}/js/pickers/init-datetime-picker.js"></script>
<script src="{{ url('template') }}/js/pickers/init-color-picker.js"></script>

<script>
    //owl carousel

    $(document).ready(function() {
        $("#owl-demo").owlCarousel({
            navigation: true,
            slideSpeed: 300,
            paginationSpeed: 400,
            singleItem: true,
            autoPlay: true

        });
    });

    //custom select box

    $(function() {
        $('select.styled').customSelect();
    });

    $(window).on("resize", function() {
        var owl = $("#owl-demo").data("owlCarousel");
        owl.reinit();
    });
</script>

