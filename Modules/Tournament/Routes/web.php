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
                Route::post('/save-team', 'TeamController@saveTeam')->name('save-team');

                Route::get('/match', 'MatchController@matchList')->name('match-list');
                Route::post('/match', 'MatchController@saveMatch')->name('match-save');
            });
        });
    });
});