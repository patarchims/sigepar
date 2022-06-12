<?php

namespace App\Http\Controllers;

use App\Models\GalleryModel;
use App\Models\Pengurus_gereja;
use App\Models\SliderModel;
use Illuminate\Http\Request;

class LandingpagesController extends Controller
{
    public function index()
    {
        $gallery = GalleryModel::all()->take(6);
        $slider = SliderModel::all();
        $pengurus = Pengurus_gereja::all();   
        return view('Landing.home_page', ['gallery' => $gallery],  ['pengurus'=> $pengurus]);
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
              $gallery = GalleryModel::all()->take(6);  
        return view('Landing.announcement' ,['gallery' => $gallery]);
    }
    public function v_about()
    {
        return view('Landing.about');
    }
}
