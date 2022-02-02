<?php

namespace Modules\Post\Entities;

use App\Helper\NepaliCalendar;
use App\NewsItemFeed;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Config;
use Spatie\Feed\Feedable;
use Spatie\Feed\FeedItem;
use LaravelLocalization;

class Post extends Model implements Feedable
{
    protected $fillable = ['title'];
    protected $casts = [
        "contents" => "array",
        'updated_at' => 'datetime',
    ];
    public function getUpdatedAtAttribute($updated_at)
    {
        if ($updated_at >= \Carbon\Carbon::today()){
            return Carbon::createFromFormat('Y-m-d H:i:s', $updated_at)->diffForHumans();
        }
        else{
            if(Config::get('app.locale') == 'np'){

                $calendar = new NepaliCalendar();
                $date = Carbon::createFromFormat('Y-m-d H:i:s', $updated_at);
                $cal = $calendar->eng_to_nep($date->year, $date->month, $date->day);
                if (!blank($cal)){
                    $year = $cal['year'];
                    $month = $cal['nmonth'];
                    $date = $cal['date'];
                    return "$date $month $year";
                }
            }
            return date('F j, Y', strtotime($updated_at));
        }
    }

    public function image(){
        //   return $this->hasOne(Media::class ,'id', 'avatar_id');
        return $this->belongsTo('Modules\Gallery\Entities\Image');
    }
    public function videoThumbnail(){
        return $this->belongsTo('Modules\Gallery\Entities\Image', 'video_thumbnail_id','id');
    }
    public function video(){
        return $this->belongsTo('Modules\Gallery\Entities\Video', 'video_id','id');
    }

    public function category(){
        return $this->belongsTo('Modules\Post\Entities\Category');
    }
    public function subCategory(){
        return $this->belongsTo('Modules\Post\Entities\SubCategory');
    }
    public function user(){
        return $this->belongsTo('Modules\User\Entities\User');
    }
    public function comments()
    {
        return $this->hasMany('Modules\Post\Entities\Comment');
    }

    public function postContents()
    {
        return $this->hasOne('Modules\Post\Entities\PostContent');
    }

    public function replay()
    {
        return $this->hasMany('Modules\Post\Entities\Comment', 'comment_id')->where('comment_id',null)->with('replay');
    }
    public function audio(){
        return $this->belongsToMany('Modules\Gallery\Entities\Audio')->withTimestamps();
    }
    public function toFeedItem(): FeedItem
    {

        return FeedItem::create([
            'id'        => $this->id,
            'title'     => $this->title,
            'summary'   => @$this->content,
            'updated'   => $this->created_at,
            'link'      => route('article.detail', ['id' => $this->slug]),
            'author'    => $this->user->first_name,
            'enclosure' => $this->image ? @$this->image->og_image: 'default-image/default-730x400.png',
        ]);
    }

    public static function getFeedItems()
    {
        return Post::with(['category','image'])
            ->where('visibility', 1)
            ->where('status',1)
            ->whereNotNull('image_id')
            ->where('language', LaravelLocalization::setLocale() ?? settingHelper('default_language'))
            ->orderBY('id', 'desc')
            ->limit(50)->get();
    }

    public function categories()
    {
        return $this->belongsToMany(Category::class)->withTimestamps();
    }

}
