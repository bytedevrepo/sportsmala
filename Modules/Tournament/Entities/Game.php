<?php

namespace Modules\Tournament\Entities;

use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
    protected $table = 'tournament_games';
    protected $fillable = [];
    protected $casts = [
        'game_time' => 'date'
    ];

    public function team1()
    {
        return $this->belongsTo(Team::class, 'team1_id');
    }

    public function team2()
    {
        return $this->belongsTo(Team::class, 'team2_id');
    }

    public function tournament()
    {
        return $this->belongsTo(Tournament::class, 'tournament_id');
    }
}
