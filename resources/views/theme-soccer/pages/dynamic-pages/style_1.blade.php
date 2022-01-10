@extends('theme-soccer.layouts.app')
@section('content')
    @if($page->show_title == 1)
        <div class="page-heading page-heading--overlay page-heading--post-bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <div class="post__meta-block post__meta-block--top">
                            <h1 class="page-heading__title"> {!! $page->title ?? '' !!}</h1>
                            <div class="post-author">
                                <div class="post-author__info">
                                    <figure class="post-author__avatar"></figure>
                                    <h4 class="post-author__name"></h4>
                                    <span class="post-author__slogan"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endif

    <div class="site-content">
        <div class="container">
            <div class="row">
                <!-- Content -->
                <div class="content col-lg-8 offset-md-2">
                    <!-- Article -->
                    <article class="card card--lg post post--single post--extra-top">
                        <div class="card__content">
                            <div class="post__content">
                                {!! $page->description !!}
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </div>
@stop
