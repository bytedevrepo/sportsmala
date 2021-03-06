@extends('common::layouts.master')
@section('sections')
    active
@endsection

@section('content')

    <div class="dashboard-ecommerce">
        <div class="container-fluid dashboard-content ">
            <!-- page info start-->
            <div class="row clearfix">
                <div class="col-12">
                    <div class="row">
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
                    </div>
                    <div class="row">
                        <!-- Main Content section start -->
                        <div class="col-md-12">
                            <div class="modal" id="addSection" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-md" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">{{ __('add_section') }}</h5>
                                            <a href="#" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </a>
                                        </div>
                                        {!!  Form::open(['route'=>'save-new-section','method' => 'post', 'id' => 'save-new-section']) !!}
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label for="type">{{ __('type') }}</label>
                                                        <select class="form-control" name="type" id="type" required>
                                                            <option value="{{\Modules\Appearance\Enums\ThemeSectionType::CATEGORY}}" selected>{{ __('category') }}</option>
                                                            <option value="{{\Modules\Appearance\Enums\ThemeSectionType::VIDEO}}">{{ __('videos') }}</option>
                                                            <option value="{{\Modules\Appearance\Enums\ThemeSectionType::LATEST_POST}}">{{ __('latest_post') }}</option>
                                                            <option value="{{\Modules\Appearance\Enums\ThemeSectionType::GALLERY}}">{{ __('gallery') }}</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12" id="category-area">
                                                    <div class="form-group">
                                                        <label for="category_id">{{ __('category') }}</label>
                                                        <select class="form-control" name="category_id" id="category_id" required>
                                                            <option value="">{{ __('select_category') }}</option>
                                                            @foreach ($categories as $category)
                                                                <option value="{{ $category->id }}">{{ $category->category_name }}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12 d-none" id="gallery-area">
                                                    <div class="form-group">
                                                        <label for="album_id">{{ __('album') }}</label>
                                                        <select class="form-control" name="album_id" id="album_id" required>
                                                            <option value="">{{ __('select_album') }}</option>
                                                            @foreach ($albums as $album)
                                                                <option value="{{ $album->id }}">{{ $album->name }}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label for="category-order" class="col-form-label">{{ __('order') }}</label>
                                                        <input id="category-order" value="1" name="order" type="number" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-title">
                                                        <label for="status">{{ __('status') }}</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <label class="custom-control custom-radio custom-control-inline">
                                                        <input type="radio" name="status" id="status_yes" value="1" checked class="custom-control-input">
                                                        <span class="custom-control-label">{{ __('active') }}</span>
                                                    </label>
                                                </div>
                                                <div class="col-md-2">
                                                    <label class="custom-control custom-radio custom-control-inline">
                                                        <input type="radio" name="status" id="status_no" value="0" class="custom-control-input">
                                                        <span class="custom-control-label">{{ __('inactive') }}</span>
                                                    </label>
                                                </div>
                                                <div class="col-md-8"></div>
                                                <div id="section-style">
                                                    <div class="col-md-12">
                                                        <div class="form-title">
                                                            <label for="section_style">{{ __('section_style') }}</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 mb-2">
                                                        <div class="section_section_style">
                                                            <label class="custom-control custom-radio custom-control-inline">
                                                                <input type="radio" name="section_style" id="section_section_style_1" value="style_1" checked class="custom-control-input">
                                                                <span class="custom-control-label"></span>
                                                            </label>
                                                            <img src="{{static_asset('default-image/Section/Section_1.png') }}" alt="" class="img-responsive cat-block-img">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12" id="ad-area">
                                                    <div class="form-group">
                                                        <label for="language">{{ __('show_ad_in_bottom') }}?</label>
                                                        <select class="form-control" name="ad" id="ad">
                                                            <option value="">{{ __('none') }}</option>
                                                            @foreach ($ads as $value => $ad)
                                                                <option value="{{$ad->id}}">{{$ad->ad_name}}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <a href="#" class="btn btn-secondary btn-xs" data-dismiss="modal">Close</a>
                                            <button type="submit" name="btnsubmit" class="btn btn-primary pull-right btn-xs">{{ __('add_section') }}</button>
                                        </div>
                                        {!! Form::close() !!}
                                    </div>
                                </div>
                            </div>
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header m-b-20">
                                    <h2>{{ __('sections') }}</h2>
                                </div>
                                <div class="table-responsive all-pages">
                                    <form action="{{route('update-section-order')}}" method="post">
                                        <table class="table table-bordered table-striped">
                                            <thead>
                                            <tr role="row">
                                                <th>{{ __('section_label') }}</th>
                                                <th>{{ __('section_style') }}</th>
                                                <th>{{ __('status') }}</th>
                                                <th>{{ __('show_ad_in_bottom') }}</th>
                                                <th style="width: 160px">
                                                    {{ __('order') }}
                                                    <button type="submit" name="btnsubmit" class="btn btn-primary pull-right btn-xs">{{ __('update') }}</button>
                                                </th>
                                                @if(Sentinel::getUser()->hasAccess(['theme_section_write']) || Sentinel::getUser()->hasAccess(['theme_section_delete']))
                                                    <th style="width: 100px;">
                                                        <a href="#" class="btn btn-primary btn-xs btn-block" data-toggle="modal" data-target="#addSection">
                                                            {{ __('add_section') }}
                                                        </a>
                                                    </th>
                                                @endif
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @csrf
                                            @foreach ($sections as $section)
                                                <input type="hidden" name="sections[]" value="{{$section->id}}">
                                                <tr role="row" class="odd" id="row_{{ $section->id }}">
                                                    <td>{{ $section->type == 1? $section->label: __($section->label) }}</td>
                                                    <td>{{ $section->section_style }}</td>
                                                    <td>
                                                        @if($section->status == 1)
                                                            <label class="label label-success label-table">{{ __('active') }}</label>
                                                        @else
                                                            <label class="label label-default label-table">{{ __('inactive') }}</label>
                                                        @endif
                                                    </td>
                                                    <td>{{ $section->ad->ad_name ?? __('none') }}</td>
                                                    <td><input type="number" name="orders[{{$section->id}}]" class="form-control" value="{{ $section->order }}"></td>
                                                    @if(Sentinel::getUser()->hasAccess(['theme_section_write']) || Sentinel::getUser()->hasAccess(['theme_section_delete']))
                                                        <td>
                                                            <div class="dropdown">
                                                                <button class="btn bg-primary dropdown-toggle btn-select-option btn-block" type="button" data-toggle="dropdown">Action
                                                                    <span class="caret"></span>
                                                                </button>
                                                                <ul class="dropdown-menu options-dropdown">
                                                                    @if(Sentinel::getUser()->hasAccess(['theme_section_write']))
                                                                        <li>
                                                                            <a href="{{ route('edit-theme-section',['id'=>$section->id]) }}"><i class="fa fa-edit option-icon"></i>{{ __('edit') }}</a>
                                                                        </li>
                                                                    @endif
                                                                    @if(Sentinel::getUser()->hasAccess(['theme_section_delete']))
                                                                        <li>
                                                                            <a href="javascript:void(0)" onclick="delete_item('theme_sections','{{ $section->id }}')"><i class="fa fa-trash option-icon"></i>{{ __('delete') }}</a>
                                                                        </li>
                                                                    @endif
                                                                </ul>
                                                            </div>
                                                        </td>
                                                    @endif
                                                </tr>
                                            @endforeach
                                            </tbody>
                                        </table>
                                    </form>
                                </div>
                                <div class="row">
                                    <div class="col-12 col-sm-6">
                                        <div class="block-header">
                                            <h2>{{ __('showing')}} {{ $sections->firstItem()}} {{ __('to') }} {{ $sections->lastItem()}}
                                                of {{ $sections->total()}} {{ __('entries') }}</h2>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6 text-right">
                                        <div class="table-info-pagination float-right">
                                            <nav aria-label="Page navigation example">
                                                {!! $sections->render() !!}
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Main Content section end -->

                        <div class="col-md-6 col-lg-6">
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header m-b-20">
                                    <h2>{{ __('Breaking News Section') }}</h2>
                                </div>
                                {!!  Form::open(['route'=>'update-breaking-section','method' => 'post']) !!}
                                <div class="row p-l-15">
                                    <div class="col-12 col-md-12">
                                        <div class="form-group">
                                            <label for="no_of_posts" class="col-form-label">{{ __('Display style') }}</label>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="primary_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="breaking_section_style" id="primary_section_style_1" value="style_1" @if($breakingSection AND $breakingSection->section_style == "style_1") checked="" @endif class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <p>style_1 (Scroll)</p>
                                            <img src="{{static_asset('default-image/breaking_section/Style_1.png') }}" alt="image" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="primary_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="breaking_section_style" id="primary_section_style_2" value="style_2" @if($breakingSection AND $breakingSection->section_style == "style_2") checked="" @endif class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <p>style_2 (Slider)</p>
                                            <img src="{{static_asset('default-image/breaking_section/Style_2.png') }}" alt="image" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="primary_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="breaking_section_style" id="primary_section_style_none" value="" @if($breakingSection AND $breakingSection->section_style == null) checked="" @endif class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <p>{{ __('none') }}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12 m-t-20">
                                        <div class="form-group form-float form-group-sm text-right">
                                            <button type="submit" name="btnsubmit" class="btn btn-primary pull-right btn-xs">{{ __('update_section') }}</button>
                                        </div>
                                    </div>
                                </div>
                                {!! Form::close() !!}
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6">
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header m-b-20">
                                    <h2>{{ __('Top News Section') }}</h2>
                                </div>
                                {!!  Form::open(['route'=>'update-top-news-section','method' => 'post']) !!}
                                <div class="row p-l-15">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="no_of_posts" class="col-form-label">{{ __('Number of posts') }}</label>
                                            <input id="no_of_posts" name="posts_count" type="number" value="{{ $topNewsSection->post_amount ?? 3 }}" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="category">{{ __('category') }}</label>
                                            <select class="form-control" name="category_id" id="category">
                                                <option value="">{{ __('select_category') }}</option>
                                                @foreach ($categories as $category)
                                                    <option value="{{ $category->id }}" {{ ($topNewsSection AND ($topNewsSection->category_id == $category->id)) ? 'selected' : '' }}>{{ $category->category_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-12">
                                        <div class="form-group">
                                            <label for="no_of_posts" class="col-form-label">{{ __('Display style') }}</label>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="primary_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="top_news_section_style" id="primary_section_style_1" value="style_1" @if($topNewsSection AND ($topNewsSection->section_style == "style_1")) checked="" @endif class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <p>style_1</p>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="primary_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="top_news_section_style" id="primary_section_style_1" value="style_2" @if($topNewsSection AND ($topNewsSection->section_style == "style_2")) checked="" @endif class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <p>style_2</p>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="primary_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="top_news_section_style" id="primary_section_style_none" value="" @if($topNewsSection AND ($topNewsSection->section_style == null)) checked="" @endif class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <p>{{ __('none') }}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12 m-t-20">
                                        <div class="form-group form-float form-group-sm text-right">
                                            <button type="submit" name="btnsubmit" class="btn btn-primary pull-right btn-xs">{{ __('update_section') }}</button>
                                        </div>
                                    </div>
                                </div>
                                {!! Form::close() !!}
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6">
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header m-b-20">
                                    <h2>{{ __('featured_news') }}</h2>
                                </div>
                                {!!  Form::open(['route'=>'update-primary-section','method' => 'post']) !!}
                                <div class="row p-l-15">

                                    <div class="col-12 col-md-4">
                                        <div class="primary_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="primary_section_style" id="primary_section_style_1" value="style_1" @if($primarySection->section_style == "style_1") checked="" @endif class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="{{static_asset('default-image/primary_section/Style_1.png') }}" alt="image" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="primary_section_style">
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="primary_section_style" id="primary_section_style_none" value="" @if($primarySection->section_style == null) checked="" @endif class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <span>{{ __('none') }}</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12 m-t-20">
                                        <div class="form-group form-float form-group-sm text-right">
                                            <button type="submit" name="btnsubmit" class="btn btn-primary pull-right btn-xs">{{ __('update_section') }}</button>
                                        </div>
                                    </div>
                                </div>
                                {!! Form::close() !!}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- page info end-->
        </div>
    </div>

@endsection
