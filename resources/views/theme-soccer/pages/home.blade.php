@extends('theme-soccer.layouts.app')
@section('content')
    @if(!blank($primarySectionPosts))
        <!-- Hero Slider -->
        @include('theme-soccer._partials.home.breaking_section', [
        'section' => $primarySection,
        'posts' => $primarySectionPosts,
        'sliderPosts' => $sliderPosts,
    ])
    @endif
    <div class="site-content">
        <div class="container">
            <div class="row">
                <div class="content col-lg-8">
                    @include('theme-soccer._partials.home.primary_section', ['section' => $primarySection,'posts' => $primarySectionPosts,'sliderPosts' => $sliderPosts])
                    @include('theme-soccer._partials.home.category_section', ['section' => $primarySection,'posts' => $primarySectionPosts,'sliderPosts' => $sliderPosts])
                </div>
                <div id="sidebar" class="sidebar col-lg-4">
                    @include('theme-soccer._partials.right_sidebar_widgets')
                </div>
            </div>
        </div>
    </div>
@stop
