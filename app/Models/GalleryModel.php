<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GalleryModel extends Model
{
    use HasFactory;

     protected $table = 'gallery';
     protected $fillable = ['id_album', 'nama_gallery', 'image_gallery'];
    public function getAvatar()
    {
        if (!$this->avatar) {
            return asset('img/Logo_HKI');
        }
        return asset('fileweb/' . $this->avatar);
    }
}
