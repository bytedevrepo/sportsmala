<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use Cartalyst\Sentinel\Laravel\Facades\Sentinel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cookie;
use Modules\Post\Entities\Comment;
use Illuminate\Support\Facades\App;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
use Session;

class CommentController extends Controller
{
    public function save(Request $request)
    {
        $request->validate([
            'comment'       => 'required|string',
            'post_id'       => 'required|integer',
        ]);

        $data               = $request->except('_token');
        $data['user_id']    = Sentinel::getUser()->id;

        $comment            = new Comment();
        $comment->fill($data);
        $comment->save();
        return redirect()->back();
    }

    public function saveReply(Request $request)
    {
        $request->validate([
            'comment'       => 'required|string',
            'post_id'       => 'required|integer',
            'comment_id'    => 'required|integer',
        ]);

        $data               = $request->except('_token');
        $data['user_id']    = Sentinel::getUser()->id;

        $comment            = new Comment();

        $comment->fill($data);
        $comment->save();

        return redirect()->back();
    }

    public function switchLanguage(Request $request)
    {
        $lang = $request->lang;
        App::setLocale($lang);
        Session::put('locale', $lang);
        LaravelLocalization::setLocale($lang);
        // add cookie on language switch
//        Cookie::queue(Cookie::make('lang', $lang, '20160'));

        $url = \LaravelLocalization::getLocalizedURL(App::getLocale(), \URL::previous());
//        dd($url);
        return redirect($url);
    }

    public function modeChange()
    {
        $mode               = Session::get('mode');

        if($mode == 'sg-dark'):
            Session::put('mode', 'sg-light');
        else:
            Session::put('mode', 'sg-dark');
        endif;

        return response()->json('success');
    }
}
