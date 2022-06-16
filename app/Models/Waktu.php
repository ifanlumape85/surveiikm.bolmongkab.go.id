<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Waktu extends Model
{
    use HasFactory;
    protected $table = 'waktu';
    protected $fillable = [
        'nama', 'slug'
    ];

    protected $hidden = [];

    public function survei()
    {
        return $this->hasMany(Survei::class, 'id_waktu', 'id');
    }
}
