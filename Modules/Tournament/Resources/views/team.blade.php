@extends('common::layouts.master')
@section('team-list')
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
                @include('tournament::alert')
                <div class="col-md-12">
                    <div class="add-new-page  bg-white p-20 m-b-20">
                        <div class="block-header">
                            <h2>Teams <a href="{{ route('team-create') }}" class="btn btn-primary pull-right">Create New Team</a></h2>
                        </div>
                        <div class="table-responsive all-pages">
                            <table class="table table-bordered table-striped">
                                <thead>
                                <tr role="row">
                                    <th>#</th>
                                    <th>Team Logo</th>
                                    <th>Team Name</th>
                                    <th>Description</th>
                                    @if(Sentinel::getUser()->hasAccess(['category_write']) || Sentinel::getUser()->hasAccess(['category_delete']))
                                        <th class="text-center">{{ __('options') }}</th>
                                    @endif
                                </tr>
                                </thead>
                                <tbody>
                                @if(isset($teams) AND !blank($teams))
                                    @foreach ($teams as $value)
                                        <tr role="row" class="odd" id="row_{{ $value->id }}">
                                            <td class="sorting_1">{{ $value->id }}</td>
                                            <td><img width="50" src="{{ asset($value->logo) }}" alt=""></td>
                                            <td>{{ $value->team_name }}</td>
                                            <td class="text-center">{{ Illuminate\Support\Str::limit($value->description, 20, $end='...') }}</td>
                                            @if(Sentinel::getUser()->hasAccess(['category_write']) || Sentinel::getUser()->hasAccess(['category_delete']))
                                                <td class="text-center">
                                                    @if(Sentinel::getUser()->hasAccess(['category_write']))
                                                        <a href="{{ route('team-edit',$value->id) }}">
                                                            <i class="fa fa-edit option-icon"></i>
                                                        </a>
                                                    @endif
                                                    @if(Sentinel::getUser()->hasAccess(['category_delete']))
                                                        <a href="javascript:void(0)"
                                                           onclick="delete_item('tournament_teams','{{ $value->id }}')"><i
                                                                class="fa fa-trash option-icon"></i>
                                                        </a>
                                                    @endif
                                                </td>
                                            @endif
                                        </tr>
                                    @endforeach
                                @else
                                    <tr>
                                        <td colspan="5">No items found</td>
                                    </tr>
                                @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- page info end-->
    </div>
    </div>
@endsection
