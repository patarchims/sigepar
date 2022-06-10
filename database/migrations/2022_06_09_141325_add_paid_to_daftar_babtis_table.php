<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('daftar_babtis', function (Blueprint $table) {
             $table->string('nama_ayah', 255, null);
             $table->string('nama_ibu', 255, null);
             $table->string('nama_anak', 255, null);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('daftar_babtis', function (Blueprint $table) {
            //
        });
    }
};
