@php
    $blockPosts = $posts->take(4);
@endphp
<!-- Featured News -->
<div class="card card--clean mt-1">
    <header class="card__header card__header--has-filter">
        <h4>{{ __('featured_news') }}</h4>
        <ul class="category-filter category-filter--featured">
            {{--<li class="category-filter__item">--}}
                {{--<a href="#" class="category-filter__link category-filter__link--reset category-filter__link--active featured-slider">all</a>--}}
            {{--</li>--}}
            {{--<li class="category-filter__item">--}}
            {{--<a href="#" class="category-filter__link" data-category="posts__item--category-1">The Team</a>--}}
            {{--</li>--}}
            {{--<li class="category-filter__item"><a href="#" class="category-filter__link" data-category="posts__item--category-3">The League</a></li>--}}
            {{--<li class="category-filter__item"><a href="#" class="category-filter__link" data-category="posts__item--category-2">Injuries</a></li>--}}
        </ul>
    </header>
    <div class="card__content">
        <!-- Slider -->
        <div class="slick posts posts--slider-featured posts-slider posts-slider--center">
            @foreach($sliderPosts as $post)
                {{--{{dd($post['image'])}}--}}
                <div class="posts__item posts__item--category-{{rand(1,3)}}">
                    <a href="#" class="posts__link-wrapper">
                        <figure class="posts__thumb">
                            {{--{{dd(@$post->image)}}--}}
                            {{--<img src="{{basePath(@$post['image'])}}/{{ $result }}" alt="{!! $post->title !!}">--}}
                            {{--@else--}}
                            {{--<img src="{{static_asset('default-image/default-500x500.png') }}" alt="{!! $post->title !!}" style="height: 100px;width: 100px">--}}
                            {{--@endif--}}
{{--                            <img src="{{ static_asset('site/theme-soccer/assets/images/soccer/samples/post-slide7.jpg') }}" alt="">--}}
                            @if(isFileExist(@$post->image, $result = @$post->image->big_image_two))
                                <img src="{{basePath($post->image)}}/{{$result }}" alt="{!! $post->title !!}" style="width:773px">
                            @else
                                <img src="{{static_asset('default-image/default-500x500.png') }}" alt="{!! $post->title !!}" style="width:400px">
                            @endif
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
                            <a href="{{ route('article.detail', ['id' => $post->slug]) }}">
                                <h3 class="posts__title">
                                    {!! \Illuminate\Support\Str::limit($post->title, 95) !!}
                                </h3>
                            </a>

                            <div class="post-author">
                                <div class="post-author__info">
                                    <time datetime="{{$post->updated_at}}" class="">
                                        <a href="{{route('article.date', date('Y-m-d', strtotime($post->updated_at)))}}">
                                            {{--@if($post->updated_at <= \Carbon\Carbon::today())--}}
                                                {{--{{ $post->updated_at->format('F j, Y') }}--}}
                                            {{--@else--}}
                                                {{--{{ $post->updated_at->diffForHumans() }}--}}
                                            {{--@endif--}}
                                            {{ $post->updated_at ?? '' }}
                                        </a>
                                    </time>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            @endforeach
        </div>
        <!-- Slider / End -->
    </div>
</div>
<!-- Featured News / End -->
<!-- Post Area 1 -->
<div class="posts posts--cards post-grid row">
    @foreach($blockPosts as $post)
        <div class="post-grid__item col-sm-6">
            <div class="card">
                <div class="card__content">
                    <ul class="posts posts--simple-list">
                        <li class="posts__item posts__item--category-1">
                            <figure class="posts__thumb">
                                <a href="{{ route('article.detail', ['id' => $post->slug]) }}">
                                    @if(isFileExist(@$post['image'], $result = @$post['image']->thumbnail))
                                        <img src="{{basePath(@$post['image'])}}/{{ $result }}" alt="{!! $post->title !!}">
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
                                    <a href="{{ route('article.detail', ['id' => $post->slug]) }}">{!! \Illuminate\Support\Str::limit($post->title, 60) !!}</a>
                                </h6>
                                <time datetime="{{ $post->updated_at }}" class="posts__date">
                                    <a href="{{route('article.date', date('Y-m-d', strtotime($post->updated_at)))}}"> {{ $post->updated_at ?? '' }}</a>
                                </time>
                            </div>
                            <div class="posts__excerpt posts__excerpt--space-sm">
                                {!! strip_tags(\Illuminate\Support\Str::limit($post->content, 155)) !!}
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    @endforeach
</div>

