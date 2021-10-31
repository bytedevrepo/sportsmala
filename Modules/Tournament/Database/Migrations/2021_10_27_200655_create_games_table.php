<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGamesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('games', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('tournament_id');
            $table->date('game_date');
            $table->unsignedBigInteger('team1_id');
            $table->unsignedBigInteger('team2_id');
            $table->string('team1_score');
            $table->string('team2_score');
            $table->boolean('played');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('games');
    }
}
