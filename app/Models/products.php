<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
class products extends Model
{
    use HasFactory;

    protected $guarded = [];

   /**
     * Section that belongs the products
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */

   public function section(){
        return $this->belongsTo(sections::class);
    }
   
}
