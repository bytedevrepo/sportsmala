@extends('common::layouts.master')
@section('tournament-list')
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
                            <h2>Tournament <a href="{{ route('tournament-create') }}" class="btn btn-primary pull-right">Create New Tournament</a></h2>
                        </div>
                        <div class="table-responsive all-pages">
                            <table class="table table-bordered table-striped">
                                <thead>
                                <tr role="row">
                                    <th class="text-center">#</th>
                                    <th class="text-center">Image</th>
                                    <th>Tournament Name</th>
                                    <th class="text-center">Category</th>
                                    <th class="text-center">Start Date</th>
                                    <th class="text-center">End Date</th>
                                    <th>Description</th>
                                    @if(Sentinel::getUser()->hasAccess(['category_write']) || Sentinel::getUser()->hasAccess(['category_delete']))
                                        <th class="text-center">{{ __('options') }}</th>
                                    @endif
                                </tr>
                                </thead>
                                <tbody>
                                @if(isset($tournaments) AND !blank($tournaments))
                                    @foreach ($tournaments as $value)
                                        <tr role="row" class="odd" id="row_{{ $value->id }}">
                                            <td class="sorting_1 text-center">{{ $value->id }}</td>
                                            <td class="text-center"><img width="50" src="{{ asset($value->image_thumbnail) }}" alt=""></td>
                                            <td>{{ $value->tournament_name }}</td>
                                            <td class="text-center">
                                                @if(!blank($value->category))
                                                    {{ data_get($value->category, 'category_name') }}
                                                @endif
                                            </td>
                                            <td class="text-center">{{ date_format(\Carbon\Carbon::createFromDate($value->start_date),"M d Y") }}</td>
                                            <td class="text-center">{{ date_format(\Carbon\Carbon::createFromDate($value->end_date),"M d Y") }}</td>
                                            <td>{{ Illuminate\Support\Str::limit($value->description, 20, $end='...') }}</td>
                                            @if(Sentinel::getUser()->hasAccess(['category_write']) || Sentinel::getUser()->hasAccess(['category_delete']))
                                                <td class="text-center">
                                                    @if(Sentinel::getUser()->hasAccess(['category_write']))
                                                        <a href="{{ route('tournament-edit',$value->id) }}">
                                                            <i class="fa fa-edit option-icon"></i>
                                                        </a>
                                                    @endif
                                                    @if(Sentinel::getUser()->hasAccess(['category_delete']))
                                                        <a href="javascript:void(0)"
                                                           onclick="delete_item('tournaments','{{ $value->id }}')"><i
                                                                class="fa fa-trash option-icon"></i>
                                                        </a>
                                                    @endif
                                                </td>
                                            @endif
                                        </tr>
                                    @endforeach
                                @else
                                    <tr>
                                        <td colspan="8">No items found</td>
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
@endsection
