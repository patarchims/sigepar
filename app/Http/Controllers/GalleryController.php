<?php

namespace App\Http\Controllers;

use App\Models\AlbumModel;
use App\Models\GalleryModel;
use Illuminate\Http\Request;

class GalleryController extends Controller
{
    public function index(Request $request)
    {
          if ($request->has('cari')) {
            $data_jemaat = AlbumModel::where('nama_album', 'LIKE', '%' . $request->cari . '%')->get();
        } else {
            $data_jemaat = AlbumModel::all();
        }

        return view('Admin.gallery.index', ['data_jemaat' => $data_jemaat]);
    }

    public function tambahGallery()
    {
         return view('Admin.gallery.tambah');
    }

    
    public function deleteGallery($id)
    {
        $jemaat = GalleryModel::find($id);
        $jemaat->delete($jemaat);    
        return redirect('/gallery')->with('sukses', 'Data Gallery ' .  $jemaat->nama_album  .  'Berhasil Dihapus');
    }
    
    public function galleryCreate(Request $request)
    {
        $validate = $this->validate($request, [
            'nama_album' => 'required',
        ]);

        if ($validate) {
            $resutl =  AlbumModel::create([
                'nama_album' => $request->nama_album,                           
            ]);
        }

        if ($request->hasFile('gallery_album')) {
            $request->file('gallery_album')->move('fileweb/', $request->file('gallery_album')->getClientOriginalName());
            $resutl->gallery_album = $request->file('gallery_album')->getClientOriginalName();
            $resutl->save();
        }

        return redirect('/gallery')->with('succes', 'Data Berhasil Ditambahkan');
    }

    public function galleryDetail($id)
    {
        $jemaat = GalleryModel::find($id);
         return view('Admin.gallery.detail', ['data_jemaat'=> $jemaat]);
      
    }
}
