<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    use HasFactory;

    protected $table = 'menu';
    public $incrementing = true;

    protected $fillable = [
        'name',
        'link',
        'icon',
        'parent'
    ];
}
