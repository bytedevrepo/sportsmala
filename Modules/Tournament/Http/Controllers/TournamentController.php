<?php

namespace Modules\Tournament\Http\Controllers;

use Modules\Tournament\Entities\Game;
use Modules\Tournament\Entities\Tournament;
use Validator;
use Image;
use Storage;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Tournament\Entities\TournamentCategory;

class TournamentController extends Controller
{
    public function categoryList()
    {
        $categories  = TournamentCategory::all();
        return view('tournament::category', compact('categories'));
    }

    public function editCategory(TournamentCategory $category)
    {
        return view('tournament::edit-category', compact('category'));
    }

    public function saveCategory(Request $request)
    {
        Validator::make($request->all(), [
            'category_name' => 'required|max:255'
        ])->validate();
        if ($request->id){
            $cat = TournamentCategory::find($request->id);
        }else{
            $cat = new TournamentCategory();
        }
        $cat->category_name = $request->category_name;
        $cat->save();
        return redirect()->route('tournament-category')->with('success',__('successfully_updated'));
    }

    public function tournamentList()
    {
        $tournaments = Tournament::with('category')->get();
        return view('tournament::tournament', compact('tournaments'));
    }

    public function createTournament()
    {
        $categories = TournamentCategory::all();
        return view('tournament::tournament-create', compact('categories'));
    }
    public function editTournament(Tournament $tournament)
    {
        $categories = TournamentCategory::all();
        return view('tournament::tournament-create', compact('tournament', 'categories'));
    }

    public function saveTournament(Request $request)
    {
        Validator::make($request->all(), [
            'tournament_name' => 'required|max:255',
            'category_id' => 'required'
        ])->validate();
        if ($request->id){
            $query = Tournament::find($request->id);
        }else{
            $query = new Tournament();
        }
        if ($request->hasFile('image')){
            $requestImage = $request->image;

            $originalImageName = date('YmdHis') . "_original_" . rand(1, 50) . '.' . 'webp';
            $thumbnailImageName = date('YmdHis') . "_thumbnail_100x100_" . rand(1, 50) . '.' . 'webp';
            if (strpos(php_sapi_name(), 'cli') !== false || settingHelper('default_storage') =='s3' || defined('LARAVEL_START_FROM_PUBLIC')) :
                $directory = 'images/';
            else:
                $directory = 'public/images/';
            endif;

            $originalImageUrl       = $directory . $originalImageName;
            $thumbnailImageUrl      = $directory . $thumbnailImageName;

            $imgOriginal = Image::make(imagecreatefromjpeg($requestImage))->encode('webp', 80);
            $imgThumbnail = Image::make(imagecreatefromjpeg($requestImage))->fit(100, 100)->encode('webp', 80);
            $imgOriginal->save($originalImageUrl);
            $imgThumbnail->save($thumbnailImageUrl);

            $query->image_thumbnail = str_replace("public/","",$thumbnailImageUrl);
            $query->image = str_replace("public/","",$originalImageUrl);
        }

        if (isset($request->start_date)){
            $start_date = Carbon::parse($request->start_date)->format('Y-m-d h:i:s A');
            $query->start_date = $start_date;
        }
        if (isset($request->end_date)){
            $end_date = Carbon::parse($request->end_date)->format('Y-m-d h:i:s A');
            $query->end_date = $end_date;
        }
        $query->tournament_name = $request->tournament_name;
        $query->category_id = $request->category_id;
        $query->description = $request->description;
        $query->save();
        return redirect()->route('tournament-list')->with('success',__('successfully_added'));
    }

    public function tournamentListAjax()
    {
        $tournaments = Tournament::select('id', 'tournament_name')->get();
        return \response()->json($tournaments);
    }

    public function scoreListAjax(Request $request)
    {
        $today = Carbon::now()->format('Y-m-d');
        $match = Game::with(['team1','team2'])
            ->where('tournament_id',$request->tournament_id)
            ->where('game_date','=', $today)
            ->get();
        return \response()->json($match);
    }
}
