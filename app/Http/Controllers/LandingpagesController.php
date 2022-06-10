<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LandingpagesController extends Controller
{
    public function index()
    {
        return view('Landing.home_page');
    }
    public function v_curchdata()
    {
        return view('Landing.curch_data');
    }
    public function v_worship()
    {
        return view('Landing.worship_procedure');
    }
    public function v_announcement()
    {
        return view('Landing.announcement');
    }
    public function v_about()
    {
        return view('Landing.about');
    }
}
