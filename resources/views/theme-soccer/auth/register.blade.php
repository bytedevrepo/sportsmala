@extends('theme-soccer.layouts.app')
@section('content')
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <h1 class="page-heading__title"><span class="highlight">Register</span> With Us
                    </h1>
                    <ol class="page-heading__breadcrumb breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('home') }}">Home</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Register</li>
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
                    <!-- Register -->
                    <div class="card">
                        <div class="card__header">
                            <h4>Register Now</h4>
                        </div>
                        <div class="card__content">
                        @include('theme-soccer._partials.error')
                        <!-- Register Form -->
                            <form name="ragister-form" method="post" action="{{ route('site.register') }}">
                                @csrf
                                <div class="form-group">
                                    <label for="register-name">{{ __('first_name') }}</label>
                                    <input type="text" value="{{ old('first_name') }}" name="first_name" class="form-control" placeholder="{{ __('first_name') }}" required>
                                </div>
                                <div class="form-group">
                                    <label for="register-name">{{ __('last_name') }}</label>
                                    <input type="text" value="{{ old('last_name') }}" name="last_name" class="form-control" placeholder="{{ __('last_name') }}" required>
                                </div>
                                <div class="form-group">
                                    <label for="register-name">{{ __('email') }}</label>
                                    <input type="email" value="{{ old('email') }}" name="email" class="form-control" placeholder="{{ __('input_email') }}" required>
                                </div>
                                <div class="form-group">
                                    <label for="register-password">{{ __('password') }}</label>
                                    <input type="password" name="password" class="form-control" placeholder="***********" required>
                                </div>
                                @if( settingHelper('captcha_visibility') == 1 )
                                    <div class="col-lg-12 text-center px-0 mb-4">
                                        {!! NoCaptcha::renderJs() !!}
                                        {!! NoCaptcha::display() !!}
                                    </div>
                                @endif
                                <div class="form-group form-group--submit">
                                    <button type="submit" class="btn btn-primary-inverse btn-lg btn-block">{{ __('sign_up') }}</button>
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
                                                {{ __('already_have_an_account') }}
                                                <a href="{{ route('site.login.form') }}">{{ __('login') }}</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <!-- Register Form / End -->
                        </div>
                    </div>
                    <!-- Register / End -->
                </div>
            </div>
        </div>
    </div>
    <!-- Content / End -->
@stop
