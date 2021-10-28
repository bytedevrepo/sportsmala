@extends('common::layouts.master')
@section('tournament-list')
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
                        <div class="col-md-12">
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header">
                                    @if(isset($team))
                                        <h2>Update Team</h2>
                                    @else
                                        <h2>Create Team</h2>
                                    @endif
                                </div>
                                <form action="{{ route('save-team') }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <input type="hidden" name="id" value="{{ $team->id ?? '' }}">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            @if(isset($team))
                                                <img width="150" src="{{ asset($team->logo) }}" alt="">
                                            @endif
                                            <input type="file" class="form-control" name="image">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="category-name" class="col-form-label">Team Name *</label>
                                            <input id="category-name" name="team_name" type="text" class="form-control" required value="{{ $team->team_name ?? '' }}">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="post_content" class="col-form-label">{{ __('description') }}*</label>
                                            <textarea name="description" id="post_content" cols="15" rows="2">{{ $team->description ?? '' }}</textarea>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 m-t-20">
                                            <div class="form-group form-float form-group-sm text-right">
                                                <button type="submit" name="btnsubmit" class="btn btn-primary pull-right">
                                                    <i class="m-r-10 mdi mdi-plus"></i>
                                                    @if(isset($team))
                                                        Update Team
                                                    @else
                                                        Add Team
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
