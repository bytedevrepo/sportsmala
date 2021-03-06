@extends('common::layouts.master')
@section('match-list')
    active
@endsection
@section('tournament')
    active
@endsection
@section('css')
    <link rel="stylesheet" href="{{ static_asset('vendor/jquery/jquery-ui/jquery-ui.theme.css') }}">
    <link rel="stylesheet" href="{{ static_asset('vendor/jquery/jquery-ui/jquery-ui.css') }}">
@endsection
@section('content')
    <div class="dashboard-ecommerce">
        @include('tournament::sub-menu')
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
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header">
                                    @if(isset($game))
                                        <h2>Update Match</h2>
                                    @else
                                        <h2>Create Match</h2>
                                    @endif
                                </div>
                                <form action="{{ route('game-save') }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <input type="hidden" name="id" value="{{ $game->id ?? '' }}">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="category">Team1 *</label>
                                                {{--<input id="tags" class="form-control" name="team1_id">--}}
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
                                                <input type="date" name="game_date" class="form-control" value="{{ (isset($game)) ? date_format(\Carbon\Carbon::createFromDate($game->game_date),"Y-m-d") : '' }}">
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
                                                    @if(isset($game))
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
@section('script')
    <script src="{{ static_asset('vendor/jquery/jquery-ui/jquery-ui-1.12.1.js') }}"></script>
    <script>
        $( function() {
            var availableTags = [ { label: "Choice1", value: "value1" }];
            var availableTagss = [
                "ActionScript",
                "AppleScript",
                "Asp",
                "BASIC",
                "C",
                "C++",
                "Clojure",
                "COBOL",
                "ColdFusion",
                "Erlang",
                "Fortran",
                "Groovy",
                "Haskell",
                "Java",
                "JavaScript",
                "Lisp",
                "Perl",
                "PHP",
                "Python",
                "Ruby",
                "Scala",
                "Scheme"
            ];
            $( "#tags" ).autocomplete({
                source: availableTags
            });
        } );
    </script>
@endsection
