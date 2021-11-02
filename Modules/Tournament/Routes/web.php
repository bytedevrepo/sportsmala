<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['prefix' => LaravelLocalization::setLocale(), 'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath', 'isInstalledCheck']], function () {
    Route::prefix('tournament')->group(function () {
        Route::get('categories', 'TournamentController@tournamentCategoryListAjax')->name('tournament-category-ajax');
        Route::post('get_score', 'TournamentController@scoreListAjax')->name('tournament-score-ajax');

        Route::group(['middleware' => ['loginCheck']], function () {
            Route::group(['middleware' => ['XSS']], function () {
                Route::get('/category', 'TournamentController@categoryList')->name('tournament-category');
                Route::get('/category/edit/{category}', 'TournamentController@editCategory')->name('edit-tournament-category');
                Route::post('/save-tournament-category', 'TournamentController@saveCategory')->name('save-tournament-category');
                Route::delete('/delete-tournament-category/{category}', 'TournamentController@destroyCategory')->name('delete-tournament-category');

                Route::get('/tournament-list', 'TournamentController@tournamentList')->name('tournament-list');
                Route::get('/tournament-create', 'TournamentController@createTournament')->name('tournament-create');
                Route::get('/tournament-edit/{tournament}', 'TournamentController@editTournament')->name('tournament-edit');
                Route::post('/save-tournament', 'TournamentController@saveTournament')->name('save-tournament');

                Route::get('/team-list', 'TeamController@teamList')->name('team-list');
                Route::get('/team-create', 'TeamController@create')->name('team-create');
                Route::get('/team-edit/{team}', 'TeamController@edit')->name('team-edit');
                Route::post('/save-team', 'TeamController@store')->name('save-team');

                Route::get('/game', 'GameController@matchList')->name('match-list');
                Route::get('/game-create', 'GameController@create')->name('game-create');
                Route::post('/save-game', 'GameController@store')->name('game-save');
                Route::post('/update-game', 'GameController@update')->name('game-update');
            });
        });
    });
});

