<?php

namespace Modules\Tournament\Http\Controllers;

use Modules\Tournament\Entities\Game;
use Modules\Tournament\Entities\Tournament;
use Modules\Tournament\Enums\GamePlayedStatus;
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
            $directory = 'images/';

            $originalImageUrl       = $directory . $originalImageName;
            $thumbnailImageUrl      = $directory . $thumbnailImageName;

            $imgOriginal = Image::make($requestImage)->encode('webp', 80);
            $imgThumbnail = Image::make($requestImage)->fit(100, 100)->encode('webp', 80);
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

    public function scoreListAjax(Request $request)
    {
        $category_id = $request->category_id;
        $date = $request->date;
        $tournament_ids = Tournament::where('category_id', $category_id)->pluck('id');

//        get last three game_dates from tournament_games table
//        if filter provides game date then select games within that day else get games of last date in games table as default
        $gameDatesArr = Game::whereIn('tournament_id', $tournament_ids)->orderBy('game_date', 'desc')->limit(3)->distinct()->pluck('game_date');
        $gameDates = [];
        foreach ($gameDatesArr as $value){
            $gameDates[] = [
                'date' => $value,
                'date_human' => Carbon::createFromDate($value)->format('M d'),
            ];
        }
        $selectedDate = '';
        if (isset($date) AND $date != ''){
            $selectedDate = $date;
        }else{
            if (!blank($gameDates)){
                $selectedDate = $gameDates[0]['date'];
            }
        }
        $query = Game::query();
        $query->with(['tournament','team1','team2']);
        $query->where('game_date',$selectedDate);
        $matchColl = $query->get();
        $match = [];
        foreach ($matchColl as $value){
            $match[] = [
                'id' => $value->id,
                'game_date' => $value->game_date,
                'game_status' => $this->gameStatus($value->game_status),
                'tournament' => $value->tournament,
                'team1' => $value->team1,
                'team1_score' => $value->team1_score,
                'team2' => $value->team2,
                'team2_score' => $value->team2_score,
            ];
        }
        return \response()->json(compact('gameDates', 'match', 'selectedDate'));
    }

    private function gameStatus($game_status){
        if($game_status === GamePlayedStatus::COMPLETED){
            return 'FT';
        }
        if ($game_status === GamePlayedStatus::ON_GOING){
            return 'On Going';
        }
        if ($game_status === GamePlayedStatus::UP_COMING){
            return 'Up Coming';
        }
    }

    public function tournamentCategoryListAjax()
    {
        $categories = TournamentCategory::select('id', 'category_name')->get();
        return \response()->json($categories);
    }
}
