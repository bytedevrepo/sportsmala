@php
    $main_post = $posts[0];
$posts = $posts->slice(1);
@endphp
<div class="container mt-2 mb-0">
    <div class="row">
        <div class="col-md-8">
            <div class="card card--clean">
                {{--<header class="card__header card__header--has-filter">--}}
                    {{--<h4>Featured News</h4>--}}
                    {{--<ul class="category-filter category-filter--featured">--}}
                        {{--<li class="category-filter__item"><a href="#" class="category-filter__link category-filter__link--reset category-filter__link--active">All</a></li>--}}
                        {{--<li class="category-filter__item"><a href="#" class="category-filter__link" data-category="posts__item--category-1">The Team</a></li>--}}
                        {{--<li class="category-filter__item"><a href="#" class="category-filter__link" data-category="posts__item--category-3">The League</a></li>--}}
                        {{--<li class="category-filter__item"><a href="#" class="category-filter__link" data-category="posts__item--category-2">Injuries</a></li>--}}
                    {{--</ul>--}}
                {{--</header>--}}
                <div class="card__content">
                    <!-- Slider -->
                    <div class="slick posts posts--slider-featured posts-slider posts-slider--center">
                        <div class="posts__item posts__item--category-1">
                            <a href="#" class="posts__link-wrapper">
                                <figure class="posts__thumb">
{{--                                    <img src="{{ static_asset('site/theme-soccer/assets/images/soccer/samples/post-slide7.jpg')}}" alt="">--}}
                                    @if(isFileExist(@$main_post->image, $result = @$main_post->image->big_image_two))
                                        <img src="{{basePath($main_post->image)}}/{{$result }}" alt="{!! $main_post->title !!}" style="width:773px">
                                    @else
                                        <img src="{{static_asset('default-image/default-500x500.png') }}" alt="{!! $main_post->title !!}" style="width:400px">
                                    @endif
                                </figure>
                                <div class="posts__inner">
                                    <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                    <h3 class="posts__title">The Planettroters will <span class="posts__title-higlight">perform this May 4th</span> at Madison Cube</h3>
                                    <div class="post-author">
                                        <figure class="post-author__avatar">
                                            <img src="{{ static_asset('site/theme-soccer/assets/images/samples/avatar-4.jpg')}}" alt="Post Author Avatar">
                                        </figure>
                                        <div class="post-author__info">
                                            <h4 class="post-author__name">Jesse Stevens</h4>
                                            <time datetime="2017-08-28" class="posts__date">August 28th, 2018</time>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        {{--<div class="posts__item posts__item--category-3">--}}
                            {{--<a href="#" class="posts__link-wrapper">--}}
                                {{--<figure class="posts__thumb"><img src="{{ static_asset('site/theme-soccer/assets/images/samples/post-slide2.jpg')}}" alt=""></figure>--}}
                                {{--<div class="posts__inner">--}}
                                    {{--<div class="posts__cat"><span class="label posts__cat-label">The League</span></div>--}}
                                    {{--<h3 class="posts__title">New York is preparing all <span class="posts__title-higlight">for the Playoffs Final</span> next December</h3>--}}
                                    {{--<div class="post-author">--}}
                                        {{--<figure class="post-author__avatar"><img src="{{ static_asset('site/theme-soccer/assets/images/samples/avatar-1.jpg')}}" alt="Post Author Avatar"></figure>--}}
                                        {{--<div class="post-author__info">--}}
                                            {{--<h4 class="post-author__name">James Spiegel</h4>--}}
                                            {{--<time datetime="2017-08-28" class="posts__date">June 28th, 2018</time>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                            {{--</a>--}}
                        {{--</div>--}}
                        {{--<div class="posts__item posts__item--category-1">--}}
                            {{--<a href="#" class="posts__link-wrapper">--}}
                                {{--<figure class="posts__thumb"><img src="assets/images/samples/post-slide3.jpg" alt=""></figure>--}}
                                {{--<div class="posts__inner">--}}
                                    {{--<div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>--}}
                                    {{--<h3 class="posts__title">The new eco friendly <span class="posts__title-higlight">stadium won a Leafy</span> Award in 2016</h3>--}}
                                    {{--<div class="post-author">--}}
                                        {{--<figure class="post-author__avatar"><img src="assets/images/samples/avatar-1.jpg" alt="Post Author Avatar"></figure>--}}
                                        {{--<div class="post-author__info">--}}
                                            {{--<h4 class="post-author__name">James Spiegel</h4>--}}
                                            {{--<time datetime="2017-08-28" class="posts__date">June 28th, 2018</time>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                            {{--</a>--}}
                        {{--</div>--}}
                        {{--<div class="posts__item posts__item--category-3">--}}
                            {{--<a href="#" class="posts__link-wrapper">--}}
                                {{--<figure class="posts__thumb"><img src="assets/images/samples/post-slide4.jpg" alt=""></figure>--}}
                                {{--<div class="posts__inner">--}}
                                    {{--<div class="posts__cat"><span class="label posts__cat-label">The League</span></div>--}}
                                    {{--<h3 class="posts__title">New York Islanders are <span class="posts__title-higlight">now flying to California</span> for the big game</h3>--}}
                                    {{--<div class="post-author">--}}
                                        {{--<figure class="post-author__avatar"><img src="assets/images/samples/avatar-1.jpg" alt="Post Author Avatar"></figure>--}}
                                        {{--<div class="post-author__info">--}}
                                            {{--<h4 class="post-author__name">James Spiegel</h4>--}}
                                            {{--<time datetime="2017-08-28" class="posts__date">June 28th, 2018</time>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                            {{--</a>--}}
                        {{--</div>--}}
                        {{--<div class="posts__item posts__item--category-3">--}}
                            {{--<a href="#" class="posts__link-wrapper">--}}
                                {{--<figure class="posts__thumb"><img src="assets/images/samples/post-slide6.jpg" alt=""></figure>--}}
                                {{--<div class="posts__inner">--}}
                                    {{--<div class="posts__cat"><span class="label posts__cat-label">The League</span></div>--}}
                                    {{--<h3 class="posts__title">Jeremy Rittersen was <span class="posts__title-higlight">called to be</span> in the National Team</h3>--}}
                                    {{--<div class="post-author">--}}
                                        {{--<figure class="post-author__avatar"><img src="assets/images/samples/avatar-2.jpg" alt="Post Author Avatar"></figure>--}}
                                        {{--<div class="post-author__info">--}}
                                            {{--<h4 class="post-author__name">Jessica Hoops</h4>--}}
                                            {{--<time datetime="2017-08-28" class="posts__date">May 24th, 2018</time>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                            {{--</a>--}}
                        {{--</div>--}}
                        {{--<div class="posts__item posts__item--category-2">--}}
                            {{--<a href="#" class="posts__link-wrapper">--}}
                                {{--<figure class="posts__thumb"><img src="assets/images/samples/post-slide5.jpg" alt=""></figure>--}}
                                {{--<div class="posts__inner">--}}
                                    {{--<div class="posts__cat"><span class="label posts__cat-label">Injuries</span></div>--}}
                                    {{--<h3 class="posts__title">Jessica Valentine has a <span class="posts__title-higlight">sprained ankle</span> and won't be in the Final</h3>--}}
                                    {{--<div class="post-author">--}}
                                        {{--<figure class="post-author__avatar"><img src="assets/images/samples/avatar-4.jpg" alt="Post Author Avatar"></figure>--}}
                                        {{--<div class="post-author__info">--}}
                                            {{--<h4 class="post-author__name">Jesse Stevens</h4>--}}
                                            {{--<time datetime="2017-08-28" class="posts__date">April 12th, 2018</time>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                            {{--</a>--}}
                        {{--</div>--}}
                    </div>
                    <!-- Slider / End -->
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <aside class="widget widget--sidebar card widget-popular-posts">
                {{--<div class="widget__title card__header">--}}
                    {{--<h4>{{ data_get($detail, 'title') }}</h4>--}}
                {{--</div>--}}
                <div class="widget__content card__content">
                    <ul class="posts posts--simple-list">
                        @foreach($posts as $post)
                            <li class="posts__item posts__item--category-1">
                                <figure class="posts__thumb">
                                    <a href="{{ route('article.detail', ['id' => $post->slug]) }}">
                                        @if(isFileExist(@$post->image, $result = @$post->image->thumbnail))
                                            <img src="{{basePath($post->image)}}/{{$result }}" alt="{!! $post->title !!}">
                                        @else
                                            <img src="{{static_asset('default-image/default-500x500.png') }}" alt="{!! $post->title !!}" style="height: 100px;width: 100px">
                                        @endif
                                    </a>
                                </figure>
                                <div class="posts__inner">
                                    <div class="posts__cat">
                                        @if(!blank($post->categories))
                                            @foreach($post->categories as $category)
                                                <a href="{{ url('category',$category->slug) }}">
                                                    <span class="label posts__cat-label mb-1 ml-1">{{ $category->category_name }}</span>
                                                </a>
                                            @endforeach
                                        @endif
                                    </div>
                                    <h6 class="posts__title">
                                        <a href="{{ route('article.detail', ['id' => $post->slug]) }}">
                                            {{ data_get($post, 'title') }}
                                        </a>
                                    </h6>
                                    <time datetime="2016-08-23" class="posts__date">
                                        <a href="{{route('article.date', date('Y-m-d', strtotime($post->updated_at)))}}">{{ $post->updated_at->format('F j, Y') }}</a>
                                    </time>
                                </div>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </aside>
        </div>
    </div>
</div>
