@extends('theme-soccer.layouts.app')
@section('author-password')
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
                        <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('site.profile.form') }}">Account</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Change Password</li>
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
                            <h4>Change Password</h4>
                            <a class="btn btn-default btn-outline btn-xs card-header__button" href="{{ route('site.profile') }}" title="Update Profile">
                                View profile
                            </a>
                        </div>
                        <div class="card__content">
                            <form class="df-personal-info" name="author-form" method="post" action="{{ route('change-password-by-me') }}">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="account-password">{{ __('old_password') }}</label>
                                            <input type="password" class="form-control" name="old_password" placeholder="**********">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="account-password">{{ __('new_password') }}</label>
                                            <input type="password" class="form-control" name="password" placeholder="**********">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="account-password-repeat">{{ __('confirm_password') }}</label>
                                            <input type="password" class="form-control" name="password_confirmation" placeholder="**********">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group--submit">
                                    <button type="submit" class="btn btn-primary-inverse btn-lg btn-block">Save all the changes</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
