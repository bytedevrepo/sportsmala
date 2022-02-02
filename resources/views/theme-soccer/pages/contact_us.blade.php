@extends('theme-soccer.layouts.app')
@section('content')
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <h1 class="page-heading__title">{!! $page->title ?? '' !!}</h1>
                    @if($page->show_breadcrumb == 1)
                        <ol class="page-heading__breadcrumb breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ url('/') }}">{{__('home')}}</a></li>
                            <li class="breadcrumb-item active" aria-current="page">{!! $page->title ?? '' !!}</li>
                        </ol>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div class="site-content">
        <div class="container">
            <!-- Contact Area -->
            <div class="card">
                <header class="card__header">
                    <h4>{!! $page->title ?? '' !!}</h4>
                </header>
                <div class="card__content">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            @include('theme-soccer._partials.notification')
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-12">
                            <h5>{{ __('send_a_message') }}</h5>
                            <p>{!! settingHelper('about_us_description') !!}</p>
                            <div class="spacer-sm"></div>
                            <h5>Contacts</h5>
                            <ul class="list">
                                <li><i class="fa fa-home mr-2" aria-hidden="true"></i> {{ settingHelper('address') }}</li>
                                <li><i class="fa fa-home mr-2" aria-hidden="true"></i>{{ settingHelper('city') }} {{ settingHelper('zip_code') }}</li>
                                <li><i class="fa fa-volume-control-phone mr-2" aria-hidden="true"></i>{{ settingHelper('phone') }}</li>
                                <li><i class="fa fa-envelope-o mr-2" aria-hidden="true"></i>{{ settingHelper('email') }}</li>
                            </ul>
                            @foreach($socialMedias as $socialMedia)
                                <a class="mr-3" href="{{$socialMedia->url}}" target="_blank"><i class="{{$socialMedia->icon}}" aria-hidden="true"></i></a>
                            @endforeach
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-12">
                            <!-- Contact Form -->
                            <form method="post" action="{{ route('site.send.message')}}" class="contact-form">
                                @csrf
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="contact-form-name">{{ __('name') }} <span class="required">*</span></label>
                                            <input type="text" value="{{ old('name') }}" name="name"
                                                   id="contact-form-name" class="form-control" placeholder="{{__('input_user')}}">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="contact-form-email">{{ __('email') }} <span class="required">*</span></label>
                                            <input type="email" value="{{ old('email') }}" name="email" id="two"
                                                   class="form-control" placeholder="{{__('input_email')}}">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="contact-form-message">{{ __('message') }} <span class="required">*</span></label>
                                    <textarea name="message" rows="5" id="four" class="form-control" placeholder="{{__('input_message')}}">{{ old('message') }}</textarea>
                                </div>
                                @if( settingHelper('captcha_visibility') == 1 )
                                    <div class="form-group mb-4 text-center">
                                        {!! NoCaptcha::renderJs() !!}
                                        {!! NoCaptcha::display() !!}
                                    </div>
                                @endif
                                <div class="form-group form-group--submit">
                                    <button type="submit" class="btn btn-primary-inverse btn-lg btn-block">{{ __('submit_now') }}</button>
                                </div>
                            </form>
                            <!-- Contact Form / End -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- Contact Area / End -->
        </div>
    </div>
@stop
