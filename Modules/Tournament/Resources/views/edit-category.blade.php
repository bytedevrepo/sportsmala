@extends('common::layouts.master')
@section('tournament-category')
    active
@endsection
@section('tournament')
    active
@endsection
@section('content')
    <div class="dashboard-ecommerce">
        @include('tournament::sub-menu')
        <div class="container-fluid dashboard-content ">
            <div class="row clearfix">
                <div class="col-md-12">
                    <div class="add-new-page bg-white p-20 m-b-20">
                        <div class="block-header">
                            <h2>Update Tournament Category</h2>
                        </div>
                        {!!  Form::open(['route'=>'save-tournament-category','method' => 'post']) !!}
                        <input name="id" type="hidden" value="{{ $category->id ?? '' }}">
                        <div class="form-group">
                            <label for="category-name" class="col-form-label">{{ __('category_name') }} *</label>
                            <input id="category-name" name="category_name" type="text" class="form-control" required value="{{ $category->category_name ?? '' }}">
                        </div>
                        <div class="row">
                            <div class="col-12 m-t-20">
                                <div class="form-group form-float form-group-sm text-right">
                                    <button type="submit" name="btnsubmit" class="btn btn-primary pull-right">
                                        <i class="m-r-10 mdi mdi-plus"></i>Update</button>
                                </div>
                            </div>
                        </div>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
