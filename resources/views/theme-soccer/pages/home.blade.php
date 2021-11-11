@extends('theme-soccer.layouts.app')
@section('content')
    @if(!blank($breakingSection))
        @include('theme-soccer._partials.home.breaking_section', ['section' => $breakingSection])
    @endif
    @if(!blank($topNewsSection))
        @include('theme-soccer._partials.home.top_news_section', ['section' => $topNewsSection])
    @endif
    @include('theme-soccer._partials.share_social_modal')
    <div class="site-content">
        <div class="container">
            <div class="row">
                <div class="content col-lg-8 sg-sticky">
{{--                    @include('theme-soccer._partials.home.top_news_section', ['section' => $primarySection,'posts' => $primarySectionPosts,'sliderPosts' => $sliderPosts])--}}
                    @include('theme-soccer._partials.home.primary_section', ['section' => $primarySection,'posts' => $primarySectionPosts,'sliderPosts' => $sliderPosts])
                    @include('theme-soccer._partials.home.category_section', ['section' => $primarySection,'posts' => $primarySectionPosts,'sliderPosts' => $sliderPosts])
                </div>
                <div id="sidebar" class="sidebar col-lg-4">
                    <div class="theiaStickySidebar">
                        @include('theme-soccer._partials.right_sidebar_widgets')
                    </div>
                </div>
            </div>
        </div>
    </div>

@stop
