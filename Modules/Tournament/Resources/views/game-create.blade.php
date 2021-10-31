@extends('common::layouts.master')
@section('match-list')
    active
@endsection
@section('tournament')
    active
@endsection
@section('content')
    <div class="dashboard-ecommerce">
        <div class="container-fluid dashboard-content ">
            <!-- page info start-->
            <div class="row clearfix">
                <div class="col-12">
                    @if(session('error'))
                        <div id="error_m" class="alert alert-danger">
                            {{session('error')}}
                        </div>
                    @endif
                    @if(session('success'))
                        <div id="success_m" class="alert alert-success">
                            {{session('success')}}
                        </div>
                    @endif
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                </div>
                <div class="col-md-2">
                    @include('tournament::sub-menu')
                </div>
                <div class="col-md-10">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header">
                                    @if(isset($game))
                                        <h2>Update Game</h2>
                                    @else
                                        <h2>Create Game</h2>
                                    @endif
                                </div>
                                <form action="{{ route('game-save') }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <input type="hidden" name="id" value="{{ $game->id ?? '' }}">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="category">Team1 *</label>
                                                <select class="form-control" name="team1_id" id="category" required>
                                                    <option value="">Select</option>
                                                    @if(isset($teams) AND !blank($teams))
                                                        @foreach($teams as $team1)
                                                            <option value="{{ $team1->id }}" @if(isset($game) AND $game->team1_id == $team1->id) selected @endif>
                                                                {{ $team1->team_name }}
                                                            </option>
                                                        @endforeach
                                                    @endif
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="category">Team2 *</label>
                                                <select class="form-control" name="team2_id" id="category" required>
                                                    <option value="">Select</option>
                                                    @if(isset($teams) AND !blank($teams))
                                                        @foreach($teams as $team2)
                                                            <option value="{{ $team2->id }}" @if(isset($game) AND $game->team2_id == $team2->id) selected @endif>
                                                                {{ $team2->team_name }}
                                                            </option>
                                                        @endforeach
                                                    @endif
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="category-name" class="col-form-label">Game Date</label>
                                                <div class="input-group" id="start_date" data-target-input="nearest">
                                                    <input type="text" name="game_date" class="form-control" value="{{ $game->game_date ?? '' }}">
                                                    <div class="input-group-append" data-target="#start_date" data-toggle="datetimepicker">
                                                        <div class="input-group-text"><i class="fa fa-calendar-alt"></i></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="category">Tournament *</label>
                                                <select class="form-control" name="tournament_id" id="category" required>
                                                    <option value="">Select</option>
                                                    @if(isset($tournaments) AND !blank($tournaments))
                                                        @foreach($tournaments as $value)
                                                            <option value="{{ $value->id }}" @if(isset($game) AND $game->tournament_id == $value->id) selected @endif>
                                                                {{ $value->tournament_name }}
                                                            </option>
                                                        @endforeach
                                                    @endif
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 m-t-20">
                                            <div class="form-group form-float form-group-sm text-right">
                                                <button type="submit" name="btnsubmit" class="btn btn-primary pull-right">
                                                    <i class="m-r-10 mdi mdi-plus"></i>
                                                    @if(isset($tournament))
                                                        Update Match
                                                    @else
                                                        Create Match
                                                    @endif
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- page info end-->
    </div>
@endsection
