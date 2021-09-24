@extends('theme-soccer.layouts.app')
@section('author-socials')
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
                        <li class="breadcrumb-item active" aria-current="page">Social Network</li>
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
                            <h4>Social Network</h4>
                            <a class="btn btn-default btn-outline btn-xs card-header__button" href="{{ route('site.profile') }}" title="Update Profile">
                                View profile
                            </a>
                        </div>
                        <div class="card__content">
                            <form class="df-personal-info" name="author-form" method="post" action="{{ route('site.author.socials.update') }}">
                                @csrf
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="account-email">{{ __('facebook_url') }}</label>
                                            <input type="text" class="form-control" value="{{ @$socials['facebook_url'] }}" name="facebook_url" placeholder="Facebook profile url">
                                        </div>
                                        <div class="form-group">
                                            <label for="account-email">{{ __('twitter_url') }}</label>
                                            <input type="text" class="form-control" value="{{ @$socials['twitter_url'] }}" name="twitter_url" placeholder="Twitter profile url">
                                        </div>
                                        <div class="form-group">
                                            <label for="account-email">{{ __('instagram_url') }}</label>
                                            <input type="text" class="form-control" value="{{ @$socials['instagram_url'] }}" name="instagram_url" placeholder="Instagram profile url">
                                        </div>
                                        <div class="form-group">
                                            <label for="account-email">{{ __('google_url') }}</label>
                                            <input type="text" class="form-control" value="{{ @$socials['google_url'] }}" name="google_url" placeholder="Google profile url">
                                        </div>
                                        <div class="form-group">
                                            <label for="account-email">{{ __('pinterest_url') }}</label>
                                            <input type="text" class="form-control" value="{{ @$socials['pinterest_url'] }}" name="pinterest_url" placeholder="Pinterest profile url">
                                        </div>
                                        <div class="form-group">
                                            <label for="account-email">{{ __('youtube_url') }}</label>
                                            <input type="text" class="form-control" value="{{ @$socials['youtube_url'] }}" name="youtube_url" placeholder="Youtube profile url">
                                        </div>
                                        <div class="form-group">
                                            <label for="account-email">{{ __('linkedin_url') }}</label>
                                            <input type="text" class="form-control" value="{{ @$socials['linkedin_url'] }}" name="linkedin_url" placeholder="Linkedin profile url">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group--submit"><button type="submit" class="btn btn-primary-inverse btn-lg btn-block">Save all the changes</button></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
