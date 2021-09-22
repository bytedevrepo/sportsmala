@php
    $blockPosts = $posts->take(4);
@endphp
<!-- Featured News -->
<div class="card card--clean">
    <header class="card__header card__header--has-filter">
        <h4>Featured News</h4>
        <ul class="category-filter category-filter--featured">
            <li class="category-filter__item"><a href="#" class="category-filter__link category-filter__link--reset category-filter__link--active">All</a></li>
            <li class="category-filter__item"><a href="#" class="category-filter__link" data-category="posts__item--category-1">The Team</a></li>
            <li class="category-filter__item"><a href="#" class="category-filter__link" data-category="posts__item--category-3">The League</a></li>
            <li class="category-filter__item"><a href="#" class="category-filter__link" data-category="posts__item--category-2">Injuries</a></li>
        </ul>
    </header>
    <div class="card__content">
        <!-- Slider -->
        <div class="slick posts posts--slider-featured posts-slider posts-slider--center">
            @foreach($sliderPosts as $post)
                <div class="posts__item posts__item--category-1">
                    <a href="#" class="posts__link-wrapper">
                        <figure class="posts__thumb"><img src="/site/theme-soccer/assets/images/soccer/samples/post-slide7.jpg" alt=""></figure>
                        <div class="posts__inner">
                            <div class="posts__cat">
                                <a href="{{ url('category',$post['category']->slug) }}">
                                    <span class="label posts__cat-label">{{ $post['category']->category_name }}</span>
                                </a>
                            </div>
                            <h3 class="posts__title">{!! \Illuminate\Support\Str::limit($post->title, 50) !!}</h3>
                            <div class="post-author">
                                {{ __('post_by') }}
                                <div class="post-author__info">
                                    <h4 class="post-author__name">
                                        <a href="{{ route('site.author',['id' => $post['user']->id]) }}">{{ data_get($post, 'user.first_name') }}</a>
                                    </h4>
                                    <time datetime="{{$post->updated_at}}" class="posts__date">
                                        <a href="{{route('article.date', date('Y-m-d', strtotime($post->updated_at)))}}">{{ $post->updated_at->format('F j, Y') }}</a>
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
<!-- Featured News / End --><!-- Post Area 1 -->
<div class="posts posts--cards post-grid row">
    @foreach($blockPosts as $post)
        <div class="post-grid__item col-sm-6">
            <div class="card">
                <div class="card__content">
                    <ul class="posts posts--simple-list">
                        <li class="posts__item posts__item--category-1">
                            <figure class="posts__thumb">
                                <a href="#">
                                    @if(isFileExist(@$post['image'], $result = @$post['image']->thumbnail))
                                        <img src="{{basePath(@$post['image'])}}/{{ $result }}" alt="{!! $post->title !!}">
                                    @else
                                        <img src="{{static_asset('default-image/default-500x500.png') }}" alt="{!! $post->title !!}" style="height: 100px;width: 100px">
                                    @endif
                                </a>
                            </figure>
                            <div class="posts__inner">
                                @isset($post->category->category_name)
                                    <div class="posts__cat">
                                        <a href="{{ url('category',$post['category']->slug) }}">
                                            <span class="label posts__cat-label">{{ $post['category']->category_name }}</span>
                                        </a>
                                    </div>
                                @endif
                                <h6 class="posts__title">
                                    <a href="{{ route('article.detail', ['id' => $post->slug]) }}">{!! \Illuminate\Support\Str::limit($post->title, 60) !!}</a>
                                </h6>
                                <time datetime="{{ $post->updated_at }}" class="posts__date">
                                    <a href="{{route('article.date', date('Y-m-d', strtotime($post->updated_at)))}}"> {{ $post->updated_at->format('F j, Y') }}</a>
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

