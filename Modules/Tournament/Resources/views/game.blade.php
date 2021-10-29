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
                <div class="col-md-2">
                    @include('tournament::sub-menu')
                </div>
                <div class="col-md-10">
                    <div class="row">
                        @include('tournament::alert')
                        <div class="col-md-12">
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header">
                                    <h2>Match</h2>
                                </div>
                                <div class="col-md-12">
                                    <form action="{{ route('match-list') }}" method="get">

                                        <div class="row mb-2">
                                            <div class="col-md-4">
                                                <select name="tournament" class="form-control" id="">
                                                    <option value="">All</option>
                                                    @if(isset($tournaments))
                                                        @foreach($tournaments as $val)
                                                            <option value="{{ $val->id }}" @if(request('tournament') == $val->id) selected @endif>{{ $val->tournament_name }}</option>
                                                        @endforeach
                                                    @endif
                                                </select>
                                            </div>
                                            <div class="col-md-8">
                                                <button type="submit" class="btn btn-primary pull-left">Show</button>
                                                <a href="{{ route('game-create') }}" class="btn btn-primary pull-right">Create</a>
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
                                                <th class="text-center">Team1 Score</th>
                                                <th class="text-center">Team2 Score</th>
                                                <th>Game Time</th>
                                                <th>Played</th>
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
                                                            @if($value->played == 0)
                                                                <td class="text-center">
                                                                    <input name="team1_score" type="text" style="width: 50px;">
                                                                </td>
                                                                <td class="text-center">
                                                                    <input name="team2_score" type="text" style="width: 50px;">
                                                                </td>
                                                            @else
                                                                <td class="text-center">{{ $value->team1_score }}</td>
                                                                <td class="text-center">{{ $value->team2_score }}</td>
                                                            @endif
                                                            <td>{{ $value->game_date }}</td>
                                                            <td>
                                                                <select name="played" id="">
                                                                    <option value="1" @if($value->played == 1) selected @endif>Played</option>
                                                                    <option value="0" @if($value->played == 0) selected @endif>Not Played</option>
                                                                </select>
                                                            </td>
                                                            @if(Sentinel::getUser()->hasAccess(['category_write']) || Sentinel::getUser()->hasAccess(['category_delete']))
                                                                <td class="text-center">
                                                                    <button class="mb-2 btn btn-sm btn-primary">Update</button>
                                                                    <br>
                                                                    @if(Sentinel::getUser()->hasAccess(['category_write']))
                                                                        <a href="{{ route('edit-category',$value->id) }}"><i
                                                                                class="fa fa-edit option-icon"></i>
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
