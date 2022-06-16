<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Opd extends Model
{
    use HasFactory;
    // use SoftDeletes;

    protected $table = 'opd';
    protected $fillable = [
        'nama', 'slug', 'keterangan'
    ];

    protected $hidden = [];

    public function user()
    {
        return $this->belongsToMany(User::class, 'opd_user', 'id_user', 'id_opd');
    }
}
