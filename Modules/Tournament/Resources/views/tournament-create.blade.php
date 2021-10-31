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
                                    @if(isset($tournament))
                                        <h2>Update Tournament</h2>
                                    @else
                                        <h2>Create Tournament</h2>
                                    @endif
                                </div>
                                <form action="{{ route('save-tournament') }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <input type="hidden" name="id" value="{{ $tournament->id ?? '' }}">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            @if(isset($tournament))
                                                <img width="150" src="{{ asset($tournament->image) }}" alt="">
                                            @endif
                                            <input type="file" class="form-control" name="image">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="category-name" class="col-form-label">Tournament Name *</label>
                                            <input id="category-name" name="tournament_name" type="text" class="form-control" required value="{{ $tournament->tournament_name ?? '' }}">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <div class="input-group " id="start_date" data-target-input="nearest">
                                                <label for="category-name" class="col-form-label">Start Date</label>
                                                <input type="text" name="start_date" class="form-control"
                                                       value="{{ $tournament->start_date ?? '' }}">
                                                <div class="input-group-append" data-target="#start_date" data-toggle="datetimepicker">
                                                    <div class="input-group-text"><i class="fa fa-calendar-alt"></i></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <div class="input-group" id="end_date" data-target-input="nearest">
                                                <label for="category-name" class="col-form-label">End Date</label>
                                                <input type="text" name="end_date" class="form-control" value="{{ $tournament->end_date ?? '' }}">
                                                <div class="input-group-append" data-target="#end_date" data-toggle="datetimepicker">
                                                    <div class="input-group-text"><i class="fa fa-calendar-alt"></i></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="category">{{ __('category') }} *</label>
                                            <select class="form-control" name="category_id" id="category" required>
                                                @if(isset($categories) AND !blank($categories))
                                                    @foreach($categories as $category)
                                                        <option value="{{ $category->id }}" @if(isset($tournament) AND $tournament->category_id == $category->id) selected @endif>
                                                            {{ $category->category_name }}
                                                        </option>
                                                    @endforeach
                                                @endif
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="post_content" class="col-form-label">{{ __('description') }}*</label>
                                            <textarea name="description" id="post_content" cols="15" rows="2">{{ $tournament->description ?? '' }}</textarea>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 m-t-20">
                                            <div class="form-group form-float form-group-sm text-right">
                                                <button type="submit" name="btnsubmit" class="btn btn-primary pull-right">
                                                    <i class="m-r-10 mdi mdi-plus"></i>
                                                    @if(isset($tournament))
                                                        Update Tournament
                                                    @else
                                                        Add Tournament
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
