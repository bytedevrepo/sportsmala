@extends('theme-soccer.layouts.app')
@section('content')
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <h1 class="page-heading__title">Recover your <span class="highlight">Account</span>
                    </h1>
                    <ol class="page-heading__breadcrumb breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('home') }}">Home</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Forgot Password</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <!-- Content
		================================================== -->
    <div class="site-content">
        <div class="container">
            <div class="row justify-content-md-center">
                <div class="col-md-6">
                    <!-- Login -->
                    <div class="card">
                        <div class="card__header">
                            <h4>{{__('forgot_password')}}</h4>
                        </div>
                        <div class="card__content">
                            <!-- Login Form -->
                            <form name="ragister-form" method="post" action="{{route('do-forget-password')}}">
                                @csrf
                                <div class="form-group">
                                    <label for="login-name">{{ __('email') }}</label>
                                    <input type="email" name="email"  value="{{old('email')}}" required class="form-control" placeholder="{{ __('email') }}">
                                </div>
                                @if( settingHelper('captcha_visibility') == 1 )
                                    <div class="col-lg-12 text-center mb-4">
                                        <div class="row">
                                            {!! NoCaptcha::renderJs() !!}
                                            {!! NoCaptcha::display() !!}
                                        </div>
                                    </div>
                                @endif
                                <div class="form-group form-group--sm">
                                    <button type="submit" class="btn btn-primary-inverse btn-lg btn-block">{{ __('send_code') }}</button>
                                </div>
                                <div class="row">
                                    @if(settingHelper('facebook_visibility') == 1)
                                        <div class="col-md-6">
                                            <a href="{{ url('/login/facebook') }}" class="btn btn-facebook btn-icon btn-block">
                                                <i class="fa fa-facebook"></i> Sign In via Facebook
                                            </a>
                                        </div>
                                    @endif
                                    @if(settingHelper('google_visibility') == 1)
                                        <div class="col-md-6">
                                            <a href="{{ url('/login/google') }}" class="btn btn-gplus btn-icon btn-block">
                                                <i class="fa fa-google"></i> Sign in via Google
                                            </a>
                                        </div>
                                    @endif
                                    <div class="col-md-12">
                                        <div class="middle-content">
                                            <p>
                                                {{ __('dont_have_an_account') }}
                                                <a href="{{ route('site.register.form') }}">{{ __('sign_up') }}</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <!-- Login Form / End -->
                        </div>
                    </div>
                    <!-- Login / End -->
                </div>
            </div>
        </div>
    </div>
    <!-- Content / End -->
@stop
