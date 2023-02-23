<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
class products extends Model
{
    use HasFactory;
    protected $guarded = [];

    // protected $fillable = [
    //     'Product_name',
    //      'section_name',
    //     'description',
    //     'section_id',

    // ];

   public function section(){
        return $this->belongsTo(sections::class);
    }
    // public function section()
    // {
    // return $this->belongsTo('App\sections');
    // }
}
