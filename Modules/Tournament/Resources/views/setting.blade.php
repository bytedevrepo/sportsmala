@extends('common::layouts.master')
@section('tournament-setting')
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
                    <div class="row">
                        <div class="col-md-6">
                            <div class="add-new-page bg-white p-20 m-b-20">
                                <div class="block-header">
                                    <h2>Display Setting</h2>
                                </div>
                                {!!  Form::open(['route'=>'tournament-setting-update','method' => 'post']) !!}
                                <div class="form-group">
                                    <label for="captcha_secret" class="col-form-label">Story Card Visibility</label><br>
                                    <label class="custom-control custom-radio custom-control-inline">
                                        <input type="radio"
                                               name="tournament_story_visibility"
                                               id="visibility_show" value="1"
                                               {{ settingHelper('tournament_story_visibility') == 1? 'checked':"" }}
                                               class="custom-control-input">
                                        <span class="custom-control-label">{{ __('show') }}</span>
                                    </label>
                                    <label class="custom-control custom-radio custom-control-inline">
                                        <input type="radio"
                                               name="tournament_story_visibility"
                                               id="visibility_hide" value="0"
                                               {{ settingHelper('tournament_story_visibility') == 0? 'checked':"" }}
                                               class="custom-control-input">
                                        <span class="custom-control-label">{{ __('hide') }}</span>
                                    </label>
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

                    </div>
                </div>
            </div>
        </div>
        <!-- page info end-->
    </div>
    </div>
@endsection
