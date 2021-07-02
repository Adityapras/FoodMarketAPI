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
                    @{{message}}
                    <span class="tools pull-right">
                        <a href="javascript:;" class="fa fa-chevron-down"></a>
                        <a href="javascript:;" class="fa fa-times"></a>
                    </span>
                </header>
                <div class="card-body">
                    <form action="#" class="form-horizontal tasi-form">
                        <div class="form-group row">
                            <label class="control-label col-md-3">Default</label>
                            <div class="col-md-4">
                                <input type="file" class="default">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-md-3">Without input</label>
                            <div class="controls col-md-9">
                                <div class="fileupload fileupload-new" data-provides="fileupload">
                                    <span class="btn btn-white btn-file">
                                        <span class="fileupload-new"><i class="fa fa-paper-clip"></i> Select file</span>
                                        <span class="fileupload-exists"><i class="fa fa-undo"></i> Change</span>
                                        <input type="file" class="default">
                                    </span>
                                    <span class="fileupload-preview" style="margin-left:5px;"></span>
                                    <a href="#" class="close fileupload-exists" data-dismiss="fileupload"
                                        style="float: none; margin-left:5px;"></a>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row last">
                            <label class="control-label col-md-3">Image Upload</label>
                            <div class="col-md-9">
                                <div class="fileupload fileupload-new" data-provides="fileupload">
                                    <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                        <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="">
                                    </div>
                                    <div class="fileupload-preview fileupload-exists thumbnail"
                                        style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                                    <div>
                                        <span class="btn btn-white btn-file">
                                            <span class="fileupload-new"><i class="fa fa-paper-clip"></i> Select
                                                image</span>
                                            <span class="fileupload-exists"><i class="fa fa-undo"></i> Change</span>
                                            <input type="file" class="default">
                                        </span>
                                        <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload"><i
                                                class="fa fa-trash"></i> Remove</a>
                                    </div>
                                </div>
                                <span class="badge badge-danger">NOTE!</span>
                                <span>
                                    Attached image thumbnail is
                                    supported in Latest Firefox, Chrome, Opera,
                                    Safari and Internet Explorer 10 only
                                </span>
                            </div>
                        </div>

                    </form>
                </div>
            </section>
        </div>
    </div>
@endsection
{{-- @section('jscontent')

<script src="{{ asset('js') }}/dashboard.js" type="text/javascript"></script>

@endsection --}}