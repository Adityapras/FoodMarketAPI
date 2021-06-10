@extends('admin.layouts.app')

@section('content')
    @php
        echo "<pre>";print_r($data['menu']);
    @endphp

    {{ $data['displayMenu'] }}
@endsection