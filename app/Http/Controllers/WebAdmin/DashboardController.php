<?php

namespace App\Http\Controllers\WebAdmin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    public function index()
    {
        // return view('admin.dashboard.index');
        return view('dashboard');
    }
}
