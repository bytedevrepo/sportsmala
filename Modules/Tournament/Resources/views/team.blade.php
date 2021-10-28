@extends('common::layouts.master')
@section('team-list')
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
                        <div class="col-md-6">
                            <div class="add-new-page bg-white p-20 m-b-20">
                                <div class="block-header">
                                    <h2>Create Tournament Category</h2>
                                </div>
                                {!!  Form::open(['route'=>'save-tournament-category','method' => 'post']) !!}
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="category-name" class="col-form-label">{{ __('category_name') }} *</label>
                                        <input id="category-name" name="category_name" type="text" class="form-control" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12 m-t-20">
                                        <div class="form-group form-float form-group-sm text-right">
                                            <button type="submit" name="btnsubmit" class="btn btn-primary pull-right">
                                                <i class="m-r-10 mdi mdi-plus"></i>Save</button>
                                        </div>
                                    </div>
                                </div>
                                {!! Form::close() !!}
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header">
                                    <h2>Categories</h2>
                                </div>
                                <div class="table-responsive all-pages">
                                    <table class="table table-bordered table-striped">
                                        <thead>
                                        <tr role="row">
                                            <th>#</th>
                                            <th>{{ __('category_name') }}</th>
                                            @if(Sentinel::getUser()->hasAccess(['category_write']) || Sentinel::getUser()->hasAccess(['category_delete']))
                                                <th class="text-center">{{ __('options') }}</th>
                                            @endif
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @if(isset($categories) AND !blank($categories))
                                            @foreach ($categories as $category)
                                                <tr role="row" class="odd" id="row_{{ $category->id }}">
                                                    <td class="sorting_1">{{ $category->id }}</td>
                                                    <td>{{ $category->category_name }}</td>
                                                    <td class="text-center">
                                                        @if(!blank($category->parent))
                                                            {{ data_get($category, 'parent.category_name') }}
                                                        @else
                                                            <code>root</code>
                                                        @endif
                                                    </td>
                                                    <td class="text-center">{{ $category->language }}</td>
                                                    <td class="text-center">{{ $category->order }}</td>
                                                    @if(Sentinel::getUser()->hasAccess(['category_write']) || Sentinel::getUser()->hasAccess(['category_delete']))
                                                        <td class="text-center">
                                                            @if(Sentinel::getUser()->hasAccess(['category_write']))
                                                                <a href="{{ route('edit-category',['id'=>$category->id]) }}"><i
                                                                        class="fa fa-edit option-icon"></i>
                                                                </a>
                                                            @endif
                                                            @if(Sentinel::getUser()->hasAccess(['category_delete']))
                                                                <a href="javascript:void(0)"
                                                                   onclick="delete_item('categories','{{ $category->id }}')"><i
                                                                        class="fa fa-trash option-icon"></i>
                                                                </a>
                                                            @endif
                                                        </td>
                                                    @endif
                                                </tr>
                                            @endforeach
                                            @else
                                            <tr role="row" class="odd">
                                                <td colspan="3">No items found</td>
                                            </tr>
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
        <!-- page info end-->
    </div>
    </div>
@endsection
