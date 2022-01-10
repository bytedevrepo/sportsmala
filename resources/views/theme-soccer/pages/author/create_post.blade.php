{{--NOT USED--}}
@extends('theme-soccer.layouts.app')
@push('style')
    <link href="{{static_asset('vendor/tinymce/skins/lightgray/skin.min.css')}}" rel="stylesheet" />
@endpush
@section('submit-news')
    active
@stop
@section('content')
    <!-- Page Heading -->
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <h1 class="page-heading__title">Create <span class="highlight">Post</span></h1>
                    <ol class="page-heading__breadcrumb breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('site.profile.form') }}">Account</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Create Post</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Content -->
    <div class="site-content">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    @include('theme-soccer.pages.author.sidebar')
                </div>
                <div class="col-lg-8">
                @include('theme-soccer._partials.notification')
                <!-- Personal Information -->
                    <div class="card card--lg">
                        <div class="card__header">
                            <h4>{{ __('submit_news') }}</h4>
                            <a class="btn btn-default btn-outline btn-xs card-header__button" href="{{ route('site.profile') }}" title="Update Profile">
                                View profile
                            </a>
                        </div>
                        <div class="card__content">
                            <form class="df-personal-info" name="author-form" method="post" action="{{ route('submit.news.save') }}" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group form-group--upload">
                                    <div class="form-group__avatar" >
                                        @if(Sentinel::getUser()->profile_image != null)
                                            <img src="{{ static_asset(Sentinel::getUser()->profile_image) }}" width="70" height="70" id="profile_image" style="border-radius: 5%">
                                        @else
                                            <img src="{{ asset('site/theme-soccer/assets/images/samples/avatar-empty.png') }}" alt="">
                                        @endif
                                        <div class="form-group__label">
                                            <h6>Profile Photo</h6>
                                            <span>Minimum size 60x60px</span>
                                        </div>
                                    </div>
                                    <div class="form-group__upload">
                                        <label class="btn btn-primary-inverse btn-xs btn-file">{{__('select_image')}}
                                            <input type="file" style="display: none;" name="profile_image" onchange="setUserImage()">
                                        </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="account-email">{{ __('title') }}</label>
                                            <input type="text" class="form-control" value="{{ old('title') }}" name="title" placeholder="Post title">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="account-email">{{ __('content') }}</label>
                                            <textarea class="form-control" name="content" id="post_content" cols="30" rows="5">{{old('content')}}</textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group--submit">
                                    @if(Cartalyst\Sentinel\Laravel\Facades\Sentinel::check())
                                        <button type="submit" class="btn btn-primary-inverse btn-lg btn-block">Submit</button>
                                    @else
                                        <a class="btn btn-primary-inverse" href="{{ route('site.login.form') }}">Login</a>
                                    @endif
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
@push('script')
    <script src="{{static_asset('vendor/tinymce/tinymce.min.js')}}"></script>
    <script>
        //TinyMCE
        tinymce.init({
            selector: "textarea#post_content",
            theme: "modern",
            height: 400,
            plugins: [
                'advlist autolink lists link image charmap print preview hr anchor pagebreak',
                'searchreplace wordcount visualblocks visualchars code fullscreen',
                'insertdatetime media nonbreaking save table contextmenu directionality',
                'emoticons template paste textcolor colorpicker textpattern imagetools'
            ],
            toolbar1: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
            toolbar2: 'print preview media | forecolor backcolor emoticons',
            image_advtab: true
        });
    </script>
@endpush
