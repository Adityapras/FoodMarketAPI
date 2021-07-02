@extends('admin.layouts.app')

@section('content')
    <div class="row">
        <div class="col-lg-12">
            <!--breadcrumbs start -->
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i> Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Library</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Data</li>
                </ol>
            </nav>
            <!--breadcrumbs end -->
        </div>
        <div class="col-md-12">
            <section class="card">
                <header class="card-header">
                    @{{ menuList }}
                    <span class="tools pull-right">
                        <a href="javascript:;" class="fa fa-chevron-down"></a>
                        <a href="javascript:;" class="fa fa-times"></a>
                    </span>
                </header>
                {{-- <div class="card-body"> --}}
                    {{-- <div class="accordion" id="accordionExample">
                        <div class="card">
                            <div class="card-header bg-light border-bottom-0" id="headingOne">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse"
                                        data-target="#dua" aria-expanded="false" aria-controls="collapseTwo">
                                        Parent
                                    </button>
                                </h5>
                            </div>
                            <div id="dua" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample"
                                style="">
                                <div class="card-body">
                            
                                    <div class="accordion" id="accordionExample2">
                                        <div class="card">
                                            <div class="card-header bg-light border-bottom-0" id="headingTwo">
                                                <h5 class="mb-0">
                                                    <button class="btn btn-link collapsed" type="button"
                                                        data-toggle="collapse" data-target="#tiga" aria-expanded="false"
                                                        aria-controls="collapseTwo">
                                                        Child
                                                    </button>
                                                </h5>
                                            </div>
                                            <div id="tiga" class="collapse" aria-labelledby="headingTwo"
                                                data-parent="#accordionExample2" style="">
                                                <div class="card-body">
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div> --}}
                    <menu-list-items :items="menuList"></menu-list-items>
                {{-- </div> --}}
            </section>
        </div>
    </div>

@endsection

{{-- @section('jscontent')
    <script>
        Vue.component('menu-list-items', {
            props: ['items'],
            template: `<div class="card-body">
                            <div v-for="child in items" class="accordion" id="accordionExample">
                                <div class="card">
                                    <div class="card-header bg-light border-bottom-0" id="headingOne">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse"
                                                :data-target="'#collapse_'+child.id" aria-expanded="false" aria-controls="collapseTwo">
                                                 @{{ child.name }}
                                            </button>
                                        </h5>
                                    </div>
                                    <div :id="'collapse_'+child.id" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample"
                                        style="">
                                        <div class="card-body">
                                            @{{child.link}}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>`
        });
    </script>
    <script src="{{ asset('js') }}/master/menu.js"></script>

@endsection --}}
