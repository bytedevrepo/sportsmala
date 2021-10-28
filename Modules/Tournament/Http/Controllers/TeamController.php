<?php

namespace Modules\Tournament\Http\Controllers;

use Validator;
use Image;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Tournament\Entities\Team;

class TeamController extends Controller
{
    public function teamList()
    {
        $teams = Team::all();
        return view('tournament::team', compact('teams'));
    }

    public function create()
    {
        return view('tournament::team-create');
    }

    public function edit(Team $team)
    {
        return view('tournament::team-create', compact('team'));
    }

    public function store(Request $request)
    {
        Validator::make($request->all(), [
            'team_name' => 'required|max:255',
        ])->validate();
        if ($request->id){
            $query = Team::find($request->id);
        }else{
            $query = new Team();
        }
        if ($request->hasFile('image')){
            $requestImage = $request->image;
            $originalImageName = date('YmdHis') . "_original_" . rand(1, 50) . '.' . 'webp';
            if (strpos(php_sapi_name(), 'cli') !== false || settingHelper('default_storage') =='s3' || defined('LARAVEL_START_FROM_PUBLIC')) :
                $directory = 'images/';
            else:
                $directory = 'public/images/';
            endif;

            $originalImageUrl = $directory . $originalImageName;
            $imgOriginal = Image::make(imagecreatefromjpeg($requestImage))->encode('webp', 80);
            $imgOriginal->save($originalImageUrl);
            $query->logo = str_replace("public/","",$originalImageUrl);
        }
        $query->team_name = $request->team_name;
        $query->description = $request->description;
        $query->save();
        return redirect()->route('team-list')->with('success',__('successfully_added'));
    }
}
