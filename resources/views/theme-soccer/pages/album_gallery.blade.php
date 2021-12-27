@extends('theme-soccer.layouts.app')
@section('style')
    <link rel="stylesheet" href="{{ static_asset('site/css/lightbox.css') }}">
@endsection
@section('content')
    <!-- Page Heading -->
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <h1 class="page-heading__title">{{__('albums')}}</h1>
                    <ol class="page-heading__breadcrumb breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">{{__('home')}}</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('image.albums')}}">{{__('albums')}}</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{ $album->name }}</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="site-content">
        <div class="container">
            <!-- Album Heading -->
            {{--<div class="album-heading">--}}
                {{--<h2 class="album-heading__title">{{ $album->name }}</h2>--}}
                {{--<h6 class="album-heading__subtitle">Updated: {{ $album->updated_at->format('F d, Y') }}</h6>--}}
            {{--</div>--}}
            <!-- Album Heading / End --><!-- Album -->
            <div class="album row js-album-masonry">

                @foreach($albumImages as $key=>$albumImage)
                    @if($key == 1)
                        <div class="album__item col-4 col-sm-6 col-lg-8">
                            <div class="album__item-holder">
                                <a href="{{ isFileExist(@$albumImage, $result = @$albumImage->original_image) ? basePath($albumImage).'/'.@$result : static_asset('default-image/default-1080x1000.png') }}" class="album__item-link mp_gallery">
                                    <figure class="album__thumb">
                                        <img src="{{ isFileExist(@$albumImage, $result = @$albumImage->original_image) ? basePath($albumImage).'/'.@$result : static_asset('default-image/default-1080x1000.png') }}" alt="{{ $albumImage->title }}">
                                    </figure>
                                    <div class="album__item-desc">
                                        <h4 class="album__item-title">{{ $albumImage->title ?? '' }}</h4>
                                        <time class="album__item-date" datetime="2016-08-23"></time>
                                    </div>
                                </a>
                                <ul class="album__item-meta meta">
                                    {{--<li class="meta__item meta__item--likes"><a href="#"><i class="meta-like meta-like--active icon-heart"></i> 26</a></li>--}}
                                </ul>
                            </div>
                        </div>
                    @else
                        <div class="album__item col-4 col-sm-6 col-lg-4">
                            <div class="album__item-holder">
                                <a href="{{ isFileExist(@$albumImage, $result = @$albumImage->original_image) ? basePath($albumImage).'/'.@$result : static_asset('default-image/default-1080x1000.png') }}" class="album__item-link mp_gallery">
                                    <figure class="album__thumb">
                                        <img src="{{ isFileExist(@$albumImage, $result = @$albumImage->original_image) ? basePath($albumImage).'/'.@$result : static_asset('default-image/default-1080x1000.png') }}" alt="{{ $albumImage->title }}">
                                    </figure>
                                    <div class="album__item-desc">
                                        <h4 class="album__item-title">{{ $albumImage->title ?? '' }}</h4>
                                        <time class="album__item-date" datetime="2016-08-23"></time>
                                    </div>
                                </a>
                                <ul class="album__item-meta meta">
                                    {{--<li class="meta__item meta__item--likes"><a href="#"><i class="meta-like meta-like--active icon-heart"></i> 26</a></li>--}}
                                </ul>
                            </div>
                        </div>
                    @endif
                @endforeach
            </div>
            <!-- Gallery Album / End -->
            <div class="spacer-lg"></div>
            {{--<div class="text-center"><a href="#" class="btn btn-primary-inverse btn-lg">Load More Photos...</a></div>--}}
        </div>
    </div>



    {{--<div class="sg-page-content">--}}
        {{--<div class="container">--}}
            {{--<nav aria-label="breadcrumb">--}}
                {{--<ol class="breadcrumb">--}}
                    {{--<li class="breadcrumb-item"><a href="{{ url('') }}">{{__('home')}}</a></li>--}}
                    {{--<li class="breadcrumb-item"><a href="{{ route('image.albums')}}"> {{__('albums')}}</a></li>--}}
                    {{--<li class="breadcrumb-item"><a href="{{  route('album.gallery',['slug'=>@$album->slug])}}"> {{ $album->name }}</a></li>--}}
                {{--</ol>--}}
            {{--</nav>--}}
            {{--<div class="row">--}}
                {{--<div class="col-sm-12">--}}
                    {{--<div class="filters text-center">--}}
                        {{--<div class="button-group filter-button-group">--}}
                            {{--<button class="btn btn-primary filter active" data-filter="*">show all</button>--}}
                            {{--@isset($tabs)--}}
                                {{--@foreach(explode(',', $tabs) as $tab)--}}
                                    {{--<button class="btn btn-primary " data-filter=".{{ str_replace(' ', '-', $tab) }}">{{ $tab }}</button>--}}
                                {{--@endforeach--}}
                            {{--@endisset--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
            {{--<div class="row">--}}

                {{--<div class="col-md-12 col-lg-12">--}}
                    {{--<div class="grid mb-5">--}}
                        {{--<div class="grid-sizer"></div>--}}
                        {{--@foreach($albumImages as $albumImage)--}}
                            {{--<a href="{{ isFileExist(@$albumImage, $result = @$albumImage->original_image) ? basePath($albumImage).'/'.@$result : static_asset('default-image/default-1080x1000.png') }}" data-title="{{ $albumImage->title }}" data-toggle="lightbox" data-gallery="example-gallery">--}}
                                {{--<div class="grid-item {{ str_replace(' ', '-', $albumImage->tab) }}" data-category="{{ str_replace(' ', '-', $albumImage->tab) }}">--}}
                                    {{--<img src="{{ isFileExist(@$albumImage, $result = @$albumImage->original_image) ? basePath($albumImage).'/'.@$result : static_asset('default-image/default-1080x1000.png') }}" alt="{{ $albumImage->title }}"/>--}}
                                {{--</div>--}}
                            {{--</a>--}}
                        {{--@endforeach--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
        {{--</div>--}}
    {{--</div>--}}
@endsection
@section('script')
    <script src="{{ static_asset('site/js/masonry.min.js') }}"></script>
    <script src="{{ static_asset('site/js/loaded.min.js') }}"></script>
    <script src="{{ static_asset('site/js/initialize.js') }}"></script>
    <script src="{{ static_asset('site/js/isotope.min.js') }}"></script>
    <script src="{{ static_asset('site/js/lightbox.min.js') }}"></script>
    <script src="{{ static_asset('site/js/filter.js') }}"></script>

@endsection
