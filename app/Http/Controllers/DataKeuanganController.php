<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DataKeuanganController extends Controller
{
    public function index()
    {
        return view('Admin.data_keuangan.data_keuangan');
    }
}
