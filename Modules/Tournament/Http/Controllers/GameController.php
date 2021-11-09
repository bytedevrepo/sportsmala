<?php

namespace Modules\Tournament\Http\Controllers;

use Modules\Tournament\Enums\GamePlayedStatus;
use Validator;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Tournament\Entities\Game;
use Modules\Tournament\Entities\Team;
use Modules\Tournament\Entities\Tournament;

class GameController extends Controller
{
    public function matchList(Request $request)
    {
        $tournaments = Tournament::all();

        $query = Game::query();
        $query->with(['team1', 'team2', 'tournament']);
        if(isset($request->tournament) AND !blank($request->tournament)){
            $query->where('tournament_id',$request->tournament )->get();
        }
        $query->orderBy('id', 'desc');
        $games = $query->paginate(10);
        return view('tournament::game', compact('games','tournaments'));
    }

    /**
     * Show the form for creating a new resource.
     * @return Response
     */
    public function create()
    {
        $teams = Team::all();
        $tournaments = Tournament::all();
        return view('tournament::game-create', compact('teams', 'tournaments'));
    }

    public function edit($game_id)
    {
        $teams = Team::all();
        $tournaments = Tournament::all();
        $game = Game::findOrFail($game_id);
        return view('tournament::game-create', compact('teams', 'tournaments', 'game'));
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Response
     */
    public function store(Request $request)
    {
        Validator::make($request->all(), [
            'team1_id' => 'required',
            'team2_id' => 'required',
            'tournament_id' => 'required',
        ])->validate();
        if ($request->id){
            $query = Game::find($request->id);
        }else{
            $query = new Game();
        }
        if (isset($request->game_date)){
            $game_date = Carbon::parse($request->game_date)->format('Y-m-d');
            $query->game_date = $game_date;
        }
        $query->team1_id = $request->team1_id;
        $query->team2_id = $request->team2_id;
        $query->tournament_id = $request->tournament_id;
        $query->save();
        return redirect()->route('match-list')->with('success',__('successfully_added'));
    }

    public function updateScore(Request $request)
    {
        Validator::make($request->all(), [
            'id' => 'required',
        ])->validate();
        $game = Game::find($request->id);

        if ($request->played == GamePlayedStatus::COMPLETED){
            Validator::make($request->all(), [
                'team1_score' => 'required',
                'team2_score' => 'required',
            ])->validate();
        }

        $game->team1_score = $request->team1_score;
        $game->team2_score = $request->team2_score;
        $game->game_status = $request->played;
        $game->save();

        return redirect()->route('match-list')->with('success',__('successfully_updated'));
    }
}
