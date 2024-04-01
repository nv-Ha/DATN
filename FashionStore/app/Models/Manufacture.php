<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Manufacture extends Model
{
    protected $table = 'manufacturers';
	protected $fillable  = [
		'name', 'slug', 'link'
	];
}
