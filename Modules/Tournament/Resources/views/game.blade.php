@extends('common::layouts.master')
@section('match-list')
    active
@endsection
@section('tournament')
    active
@endsection
@section('content')
    <div class="dashboard-ecommerce">
        @include('tournament::sub-menu')
        <div class="container-fluid dashboard-content ">
            <!-- page info start-->
            <div class="row clearfix">
                <div class="col-md-12">
                    <div class="row">
                        @include('tournament::alert')
                        <div class="col-md-12">
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header">
                                    <h2>Match</h2>
                                </div>
                                <form action="{{ route('match-list') }}" method="get">

                                    <div class="row mb-2">
                                        <div class="col-md-4">
                                            <select name="tournament" class="form-control" id="">
                                                <option value="">All Tournaments</option>
                                                @if(isset($tournaments))
                                                    @foreach($tournaments as $val)
                                                        <option value="{{ $val->id }}" @if(request('tournament') == $val->id) selected @endif>{{ $val->tournament_name }}</option>
                                                    @endforeach
                                                @endif
                                            </select>
                                        </div>
                                        <div class="col-md-8">
                                            <button type="submit" class="btn btn-primary pull-left">Filter</button>
                                            <a href="{{ route('game-create') }}" class="btn btn-primary pull-right">Create New Match</a>
                                        </div>
                                    </div>
                                </form>
                                <div class="table-responsive all-pages">
                                    <table class="table table-bordered table-striped">
                                        <thead>
                                        <tr role="row">
                                            <th>#</th>
                                            <th>Tournament</th>
                                            <th>Team1</th>
                                            <th>Team2</th>
                                            <th>Game Date</th>
                                            <th class="text-center">Team1 Score</th>
                                            <th class="text-center">Team2 Score</th>
                                            <th>Game Status</th>
                                            @if(Sentinel::getUser()->hasAccess(['category_write']) || Sentinel::getUser()->hasAccess(['category_delete']))
                                                <th class="text-center">{{ __('options') }}</th>
                                            @endif
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @if(isset($games))
                                            @foreach ($games as $value)
                                                <form action="{{ route('game-update') }}" method="post">
                                                    @csrf
                                                    <tr role="row" class="odd" id="row_{{ $value->id }}">
                                                        <input type="hidden" value="{{ $value->id }}" name="id">
                                                        <td class="sorting_1">{{ $value->id }}</td>
                                                        <td>
                                                            @if(!blank($value->tournament))
                                                                {{ data_get($value, 'tournament.tournament_name') }}
                                                            @endif
                                                        </td>
                                                        <td>{{ data_get($value, 'team1.team_name') }}</td>
                                                        <td>{{ data_get($value, 'team2.team_name') }}</td>
                                                        <td>{{ $value->game_date }}</td>
                                                        @if($value->game_status != 2)
                                                            <td class="text-center">
                                                                <input name="team1_score" type="text" style="width: 100px;" value="{{ $value->team1_score ?? '' }}">
                                                            </td>
                                                            <td class="text-center">
                                                                <input name="team2_score" type="text" style="width: 100px;" value="{{ $value->team2_score ?? '' }}">
                                                            </td>
                                                        @else
                                                            <td class="text-center">{{ $value->team1_score }}</td>
                                                            <td class="text-center">{{ $value->team2_score }}</td>
                                                        @endif
                                                        <td>
                                                            <select name="played" id="">
                                                                <option value="0" @if($value->game_status == 0) selected @endif>UP_COMING</option>
                                                                <option value="1" @if($value->game_status == 1) selected @endif>ON_GOING</option>
                                                                <option value="2" @if($value->game_status == 2) selected @endif>COMPLETED</option>
                                                            </select>
                                                        </td>
                                                        @if(Sentinel::getUser()->hasAccess(['category_write']) || Sentinel::getUser()->hasAccess(['category_delete']))
                                                            <td class="text-center">
                                                                <button class="mb-2 btn btn-xs btn-primary">Update Score</button>
                                                                <br>
                                                                @if(Sentinel::getUser()->hasAccess(['category_write']))
                                                                    <a href="{{ route('game-edit',$value->id) }}">
                                                                        <i class="fa fa-edit option-icon"></i>
                                                                    </a>
                                                                @endif
                                                                @if(Sentinel::getUser()->hasAccess(['category_delete']))
                                                                    <a href="javascript:void(0)"
                                                                       onclick="delete_item('games','{{ $value->id }}')"><i
                                                                            class="fa fa-trash option-icon"></i>
                                                                    </a>
                                                                @endif
                                                            </td>
                                                        @endif
                                                    </tr>
                                                </form>
                                            @endforeach
                                        @endif
                                        </tbody>
                                    </table>
                                    <div class="float-right">
                                        {!! $games->links() !!}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- page info end-->
    </div>
@endsection
