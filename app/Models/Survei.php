<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Survei extends Model
{
    use HasFactory;
    protected $table = 'survei';
    protected $fillable = [
        'id_opd', 'nama', 'jenis_kelamin', 'id_pendidikan', 'id_pekerjaan', 'jenis_layanan', 'kesesuaian', 'kemudahan', 'kecepatan', 'kewajaran', 'hasil', 'kompetensi', 'perilaku', 'kualitas', 'penanganan'
    ];

    protected $hidden = [];

    public function opd()
    {
        return $this->belongsTo(Opd::class, 'id_opd', 'id');
    }

    public function pekerjaan()
    {
        return $this->belongsTo(Pekerjaan::class, 'id_pekerjaan', 'id');
    }

    public function pendidikan()
    {
        return $this->belongsTo(Pendidikan::class, 'id_pendidikan', 'id');
    }

    public function usia()
    {
        return $this->belongsTo(Usia::class, 'id_usia', 'id');
    }

    public function waktu()
    {
        return $this->belongsTo(Waktu::class, 'id_waktu', 'id');
    }
}
