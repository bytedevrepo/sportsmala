@extends('theme-soccer.layouts.app')
@section('content')
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <h1 class="page-heading__title">Reset <span class="highlight">Password</span>
                    </h1>
                    <ol class="page-heading__breadcrumb breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('home') }}">Home</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Reset Password</li>
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
                            <h4>{{__('reset_password')}}</h4>
                        </div>
                        <div class="card__content">
                            <!-- Login Form -->
                            <form name="ragister-form" method="post" action="{{route('reset-password', [$email, $resetCode])}}">
                                @csrf
                                <div class="form-group">
                                    <label for="login-name">{{ __('email') }}</label>
                                    <input type="password" name="password"  value="{{old('password')}}" required class="form-control" placeholder="{{ __('password') }}">
                                </div>
                                <div class="form-group">
                                    <label for="repeat-password">Repeat Password</label>
                                    <input type="password" name="password_confirmation" value="{{old('password_confirmation')}}" class="form-control" placeholder="{{ __('confirm_password')}}" required>
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
                                    <button type="submit" class="btn btn-primary-inverse btn-lg btn-block">{{ __('change_password') }}</button>
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
