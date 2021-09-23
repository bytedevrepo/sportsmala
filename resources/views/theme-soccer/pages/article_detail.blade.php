@extends('theme-soccer.layouts.app')
@section('content')
    <!-- Page Heading -->
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <h1 class="page-heading__title">Post</h1>
                    <ol class="page-heading__breadcrumb breadcrumb">
                        <li class="breadcrumb-item"><a href="_soccer_index.html">Home</a></li>
                        <li class="breadcrumb-item"><a href="_soccer_blog-1.html">News</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Post Page V2</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Heading / End -->
    <!-- Content -->
    <div class="site-content">
        <div class="container">
            <div class="row">
                <!-- Content -->
                <div class="content col-lg-8">
                    <!-- Article -->
                    @if($post->layout =='default')
                        @include('theme-soccer.pages.article.style_1')
                    @elseif($post->layout == 'style_2')
                        <?php echo ("style not found"); ?>
                        {{--                    @include('site.pages.article.style_2')--}}
                    @elseif($post->layout == 'style_3')
                        <?php echo ("style not found"); ?>
                        {{--                    @include('site.pages.article.style_3')--}}
                    @endif
                    @if(settingHelper('inbuild_comment') == 1)
                        @include('theme-soccer._partials.post.write_comment')

                        @if(!blank($comments = data_get($post, 'comments')))
                            @include('theme-soccer._partials.post.comments')
                        @endif
                    @endif

                    @if(!blank($relatedPost))
                        @include('theme-soccer._partials.post.related_posts')
                    @endif
                </div>
                <!-- Content / End -->
                <!-- Sidebar -->
                <div id="sidebar" class="sidebar col-lg-4">
                    <div class="theiaStickySidebar">
                        @include('theme-soccer._partials.right_sidebar_widgets')
                    </div>
                </div>
                <!-- Sidebar / End -->
            </div>
        </div>
    </div>
@endsection
