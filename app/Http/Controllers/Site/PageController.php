<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Modules\Gallery\Entities\Album;
use Modules\Gallery\Entities\GalleryImage;
use Modules\Gallery\Entities\ImageCategory;
use Modules\Social\Entities\SocialMedia;
use Modules\Page\Entities\Page;
use Validator;
use Modules\Contact\Entities\ContactMessage;

class PageController extends Controller
{
    public function page( $id )
    {
        try{
            $page = Page::with('image')->where('slug', $id)->first();
            $socialMedias = SocialMedia::where('status', 1)->get();
//            dd($page);
            if($page->page_type == 1):
//                return view('site.pages.default_page', compact('page'));
                return view('theme-soccer.pages.default_page', compact('page'));
            else:
                return view('theme-soccer.pages.contact_us', compact('page', 'socialMedias'));
//                return view('site.pages.contact_us', compact('page', 'socialMedias'));
            endif;
        }
        catch (\Exception $e){
            return view('site.pages.404');
        }
    }

    public function sendMessage( Request $request )
    {
        if( settingHelper('captcha_visibility') == 1):
        	$validator = Validator::make($request->all(), [
                'name' => 'required',
                'email' => 'required',
                'message' => 'required',
                'g-recaptcha-response' => 'required'
            ]);
        else:
            $validator = Validator::make($request->all(), [
                'name' => 'required',
                'email' => 'required',
                'message' => 'required'
            ]);
        endif;

        if ($validator->fails()) :
            return redirect()->back()
                    ->withErrors($validator)
                    ->withInput();
        endif;

    	 $message = new ContactMessage();
    	 $message->name = $request->name;
    	 $message->email = $request->email;
    	 $message->message = $request->message;
    	 $message->save();

    	 return redirect()->back()->with('success', __('successfully_send'));
    }

    public function imageAlbums(){
        $albums = Album::all();
        return view('theme-soccer.pages.albums', compact('albums'));
    }

    public function imageGallery($slug){
        $album      = Album::where('slug',$slug)->first();

        if ($album != ''):
            $albumImages    = GalleryImage::where('album_id',$album->id)->orderBy('id','desc')->get();
            $tabs           = $album->tabs;
//            dd($tabs);
            return view('theme-soccer.pages.album_gallery',compact('albumImages','tabs','album'));
        else:
            abort(404);
        endif;

    }

    public function feed(){
        $url = "https://www.nasa.gov/rss/dyn/lg_image_of_the_day.rss";

        $invalidurl = false;
        if(@simplexml_load_file($url)){
            $feeds = simplexml_load_file($url);
//            dd($feeds);
        }else{
            $invalidurl = true;
            return view('site.pages.404');
        }
        return view('site.pages.feed',compact('feeds','invalidurl'));
    }
}
