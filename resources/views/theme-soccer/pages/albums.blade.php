@extends('theme-soccer.layouts.app')

@section('content')
    <!-- Page Heading -->
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <h1 class="page-heading__title">{{__('albums')}}</h1>
                    <ol class="page-heading__breadcrumb breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">{{__('home')}}</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{__('albums')}}</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="site-content">
        <div class="container">
            <!-- Gallery -->
            <div class="gallery row">
                @foreach(@$albums as $album)
                    <div class="gallery__item col-6 col-sm-4">
                        <a href="{{ route('album.gallery',['slug'=>@$album->slug]) }}" class="gallery__item-inner card">
                            <figure class="gallery__thumb">
                                @if(isFileExist(@$album, $result = @$album->original_image))
                                    <img src="{{basePath($album)}}/{{ @$result }}"/>
                                @else
                                    <img src="{{static_asset('default-image/default-1080x1000.png') }}"/>
                                @endif
                                <span class="btn-fab gallery__btn-fab"></span>
                            </figure>

                            <div class="gallery__content card__content card__content--header-bg">
                                <span class="gallery__icon gallery__icon--circle"><span class="icon-picture"></span></span>
                                <div class="gallery__details">
                                    <h4 class="gallery__name">{{ $album->name }}</h4>
                                    <div class="gallery__date">Updated: {{ $album->updated_at->format('F d, Y') }}</div>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
            <!-- Gallery / End -->
            <div class="spacer-lg"></div>
        </div>
    </div>
@endsection
@section('script')
    <script src="{{ static_asset('site/js/masonry.min.js') }}"></script>
    <script src="{{ static_asset('site/js/loaded.min.js') }}"></script>
    <script src="{{ static_asset('site/js/initialize.js') }}"></script>
@endsection

