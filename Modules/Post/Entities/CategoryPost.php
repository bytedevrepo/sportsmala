<?php

namespace Modules\Post\Entities;

use Illuminate\Database\Eloquent\Model;

class CategoryPost extends Model
{
    protected $fillable = [];
    protected $table = 'category_post';

    public function post()
    {
        return $this->belongsTo(Post::class, 'post_id');
    }
}
