@extends('theme-soccer.layouts.app')
@section('content')
    <!-- Page Heading -->
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <h1 class="page-heading__title">Date</h1>
                    <ol class="page-heading__breadcrumb breadcrumb">
                        <li class="breadcrumb-item"><a href="/">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Date</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="site-content">
        <div class="container">
            <div class="row">
                <!-- Content -->
                <div class="content col-lg-8">
                    <!-- Posts Grid -->
                    <div class="posts posts--cards post-grid post-grid--2cols post-grid--fitRows row">
                        @if($posts->count())
                            @foreach($posts as $post)
                                <div class="post-grid__item col-6">
                                    <div class="posts__item posts__item--card posts__item--category-1 card">
                                        <figure class="posts__thumb">
                                            @if(!blank($post->categories))
                                                <div class="posts__cat">
                                                    @foreach($post->categories as $category)
                                                        <a href="{{ url('category',$category->slug) }}">
                                                            <span class="label posts__cat-label mr-1">{{ $category->category_name }}</span>
                                                        </a>
                                                    @endforeach
                                                </div>
                                            @endif
                                            <a href="{{ route('article.detail', ['id' => $post->slug]) }}">
                                                @if(isFileExist($post->image, $result =  @$post->image->medium_image))
                                                    <img src="{{basePath($post->image)}}/{{ $result }}" alt="{!! $post->title !!}">
                                                @else
                                                    <img src="{{static_asset('default-image/default-358x215.png') }}" alt="{!! $post->title !!}" >
                                                @endif
                                            </a>
                                        </figure>
                                        <div class="posts__inner card__content">
                                            <a href="#" class="posts__cta"></a>
                                            <time datetime="{{ $post->updated_at }}" class="posts__date">
                                                <a href="{{route('article.date', date('Y-m-d', strtotime($post->updated_at)))}}">
                                                    {{--@if($post->updated_at <= \Carbon\Carbon::today())--}}
                                                        {{--{{ $post->updated_at->format('F j, Y') }}--}}
                                                    {{--@else--}}
                                                        {{--{{ $post->updated_at->diffForHumans() }}--}}
                                                    {{--@endif--}}
                                                    {{ $post->updated_at ?? '' }}
                                                </a>
                                            </time>

                                            <h6 class="posts__title">
                                                <a href="{{ route('article.detail', ['id' => $post->slug]) }}">
                                                    {!! \Illuminate\Support\Str::limit($post->title, 65) !!}
                                                </a>
                                            </h6>
                                            <div class="posts__excerpt">
                                                {!! \Illuminate\Support\Str::limit(strip_tags($post->content, 120)) !!}
                                            </div>
                                        </div>
                                        <footer class="posts__footer card__footer">
                                            <div class="post-author">
                                                <div class="post-author__info">
                                                    <h4 class="post-author__name">
                                                        <a href="{{ route('site.author',['id' => $post->user->id]) }}">{{$post->user->first_name}} </a>
                                                    </h4>
                                                </div>
                                            </div>
                                            <ul class="post__meta meta">
                                                <li class="meta__item meta__item--views">{{ $post->total_hits ?? 0 }}</li>
                                            </ul>
                                        </footer>
                                    </div>
                                </div>
                            @endforeach
                        @endif
                    </div>
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
