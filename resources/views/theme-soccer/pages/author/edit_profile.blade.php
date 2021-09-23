@extends('theme-soccer.layouts.app')
@section('my-profile-edit')
    active
@stop
@section('content')
    <!-- Page Heading -->
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <h1 class="page-heading__title">Update <span class="highlight">Account</span></h1>
                    <ol class="page-heading__breadcrumb breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('site.profile.form') }}">Update Account</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Personal Information</li>
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
                    <!-- Account Navigation -->
                    <div class="card">
                        <div class="card__header">
                            <h4>Welcome Back!</h4>
                        </div>
                        <div class="card__content">
                            @include('theme-soccer.pages.author.sidebar')
                        </div>
                    </div>
                    <!-- Account Navigation / End -->
                </div>
                <div class="col-lg-8">
                   @include('theme-soccer._partials.notification')
                    <!-- Personal Information -->
                    <div class="card card--lg">
                        <div class="card__header">
                            <h4>Personal Information</h4>
                            <a class="btn btn-default btn-outline btn-xs card-header__button" href="{{ route('site.profile') }}" title="Update Profile">
                                View profile
                            </a>
                        </div>

                        <div class="card__content">

                            <form class="df-personal-info" name="author-form" method="post" action="{{ route('site.profile.save') }}" enctype="multipart/form-data">
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
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="account-username">{{ __('first_name') }}</label>
                                            <input required type="text" class="form-control" name="first_name" id="first_name" value="{{ Sentinel::getUser()->first_name }}" placeholder="{{ __('first_name') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="account-username">{{ __('last_name') }}</label>
                                            <input required type="text" class="form-control" name="last_name" value="{{ Sentinel::getUser()->last_name }}" id="account-username" placeholder="{{ __('last_name') }}">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="account-email">{{ __('email') }}</label>
                                            <input disabled type="email" class="form-control" value="{{ Sentinel::getUser()->email }}" name="" id="account-email" placeholder="{{__('input_email')}}">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="account-email">{{ __('email') }}</label>
                                            <textarea class="form-control" rows="7" name="about" placeholder="{{__('input_message')}}">{{ Sentinel::getUser()->about_us }}</textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group--submit"><button type="submit" class="btn btn-primary-inverse btn-lg btn-block">See all the changes</button></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function setUserImage(e) {
            let frame = document.getElementById('profile_image');
            frame.src=URL.createObjectURL(event.target.files[0]);
        }
    </script>
@stop
