<?php

namespace Modules\Tournament\Entities;

use Illuminate\Database\Eloquent\Model;

class Tournament extends Model
{
    protected $fillable = [];

    public function category()
    {
        return $this->belongsTo(TournamentCategory::class, 'category_id');
    }
}
