<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductPhotos extends Model
{
    protected $fillable = ['image'];
    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
