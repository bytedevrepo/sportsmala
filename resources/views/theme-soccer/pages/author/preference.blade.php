@extends('theme-soccer.layouts.app')
@section('author-preference')
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
                        <li class="breadcrumb-item active" aria-current="page">Preference</li>
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
                            <h4>Preference</h4>
                            <a class="btn btn-default btn-outline btn-xs card-header__button" href="{{ route('site.profile') }}" title="Update Profile">
                                View profile
                            </a>
                        </div>
                        <div class="card__content">
                            <form class="df-personal-info" name="author-form" action="{{route('site.author.preference.update')}}" method="post">
                                @csrf
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="checkbox checkbox-inline mr-2">
                                                <input type="checkbox" name="email_show" value="1" {{ @$preferences['email_show'] == 1? 'checked':"" }}>
                                                {{ __('show_email_on_profile_page') }} <span class="checkbox-indicator"></span>
                                            </label>
                                        </div>
                                        <div class="form-group">
                                            <label class="checkbox checkbox-inline mr-2">
                                                <input type="checkbox" name="author_show" value="1" {{ @$preferences['author_show'] == 1? 'checked':"" }}>
                                                {{ __('show_author_on_post_detail') }} <span class="checkbox-indicator"></span>
                                            </label>
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
    <script>
        function setUserImage(e) {
            let frame = document.getElementById('profile_image');
            frame.src=URL.createObjectURL(event.target.files[0]);
        }
    </script>
@stop
