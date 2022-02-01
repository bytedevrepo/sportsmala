<?php

namespace Modules\Appearance\Entities;

use Illuminate\Database\Eloquent\Model;
use LaravelLocalization;
use Modules\Gallery\Entities\Album;
use Modules\Post\Entities\Category;
use Modules\Post\Entities\CategoryPost;
use Sentinel;

class ThemeSection extends Model
{
    protected $fillable = [
        'theme_id',
        'label',
        'order',
        'category_id',
        'post_amount',
        'section_style',
        'is_primary',
    ];

    public function category()
    {
        return $this->belongsTo('Modules\Post\Entities\Category', 'category_id', 'id');
    }

    public function ad()
    {
        return $this->belongsTo('Modules\Ads\Entities\Ad');
    }

//    not used
    public function posts()
    {
        return $this->hasMany('Modules\Post\Entities\Post', 'category_id', 'category_id')
            ->with('image', 'user')->orderBy('id', 'desc')
            ->where('visibility', '1')
            ->where('status', '1')->when(Sentinel::check() == false, function ($query) {
                $query->where('auth_required',0);
            });
    }

    public function post()
    {
        return $this->newPosts()->take(10);
    }

    public function newPosts(){
        return $this->hasMany(CategoryPost::class, 'category_id', 'category_id');
    }

    public function album()
    {
        return Album::where('id', $this->album_id)->with('galleryImages')->first();
    }
}

