@extends('theme-soccer.layouts.app')
@section('content')
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <h1 class="page-heading__title">{!! $page->title ?? '' !!}</h1>
                    <ol class="page-heading__breadcrumb breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ url('') }}">{{__('home')}}</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{!! $page->title ?? '' !!}</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="site-content">
        <div class="container">
            <div class="row">
                <!-- Content -->
                <div class="content {{ $page->template == 2 ? 'col-lg-8' : 'col-lg-12'  }}">
                    <!-- Article -->
                    <article class="card card--lg post post--single">
                        @if(isset($page->image) AND !blank($page->image))
                            <figure class="post__thumbnail ">
                                <img src="{{ static_asset($page->image->original_image) }}" alt="">
                            </figure>
                        @endif
                        <div class="card__content">
                            <header class="post__header">
                                @if($page->show_title == 1)
                                    <h2 class="post__title">
                                        {!! $page->title ?? '' !!}
                                    </h2>
                                @endif
                            </header>
                            <div class="post__content">
                                {!! $page->description !!}
                            </div>
                        </div>
                    </article>
                    <!-- Article / End -->
                </div>
                <!-- Content / End -->

                @if($page->template == 2)
                    <div id="sidebar" class="sidebar col-lg-4">
                        <div class="theiaStickySidebar">
                            @include('theme-soccer._partials.right_sidebar_widgets')
                        </div>
                    </div>
                @endif
            </div>
        </div>
    </div>
@stop
