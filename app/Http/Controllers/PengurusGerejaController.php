<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;

class PengurusGerejaController extends Controller
{
    public function index(Request $request)

    {
      

         if ($request->has('cari')) {
            $data_jemaat = \App\Models\Pengurus_gereja::where('nama_pengurus', 'LIKE', '%' . $request->cari . '%')->get();
        } else {
            $data_jemaat = \App\Models\Pengurus_gereja::all();      
         }

        $data_pengurus = \App\Models\User::where('role', '=', 'pengurus')->get();      
     
        return view('Admin.pengurus_gereja.index', ['users' => $data_pengurus], ['data_jemaat' => $data_jemaat]);
    }
    public function tambah_pengurus()
    {
        return view('Admin.pengurus_gereja.tambah_pengurus');
    }
    public function create(Request $request)
    {
        $this->validate($request, [
            'nama_pengurus' => 'required| min:5',
            'jenis_kelamin' => 'required',
            'kontak' => 'nullable|numeric',
            'tanggal_masuk' => 'required',
            'tanggal_penabalan' => 'required',
            'jabatan' => 'required',
            'avatar' => 'mimes:jpg,png',
        ]);
        // Insert ke tabel Users
        $user = new \App\Models\User;
        $user->role = $request->jabatan;
        $user->nama = $request->nama_pengurus;
        $user->username = 'pengurusHKI';
        $user->password = bcrypt('pengurusHKI');
        $user->remember_token = Str::random(60);
        $user->save();
        $request->request->add(['user_id' => $user->id]);
        // Insert ke table pengurus gereja
        $pengurus = \App\Models\Pengurus_gereja::create($request->all());
        if ($request->hasFile('avatar')) {
            $request->file('avatar')->move('fileweb/', $request->file('avatar')->getClientOriginalName());
            $pengurus->avatar = $request->file('avatar')->getClientOriginalName();
            $pengurus->save();
        }
        return redirect('/DataPengurus_Gereja')->with('sukses', 'Data Pengurus ' . $pengurus->nama_pengurus . 'berhasil ditambahkan');
    }
    public function edit($id)
    {
        $pengurus = \App\Models\Pengurus_gereja::find($id);
        return view('Admin.pengurus_gereja.edit', ['pengurus' => $pengurus]);
    }
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'nama_pengurus' => 'required| min:5',
            'jenis_kelamin' => 'required',
            'kontak' => 'nullable|numeric',
            'tanggal_masuk' => 'required',
            'tanggal_penabalan' => 'required',
            'jabatan' => 'required',
            'avatar' => 'mimes:jpg,png',
        ]);
        $pengurus = \App\Models\Pengurus_gereja::find($id);
        $pengurus->update($request->all());
        if ($request->hasFile('avatar')) {
            $request->file('avatar')->move('fileweb/', $request->file('avatar')->getClientOriginalName());
            $pengurus->avatar = $request->file('avatar')->getClientOriginalName();
            $pengurus->save();
        }
        return redirect('/DataPengurus_Gereja')->with('sukses', 'Data Pengurus ' . $pengurus->nama_pengurus . 'berhasil diubah');
    }
}
