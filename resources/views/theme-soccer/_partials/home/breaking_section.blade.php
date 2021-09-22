<div class="hero-slider-wrapper">
    <div class="hero-slider">
        @foreach($breakingNewss as $post)
            <div class="hero-slider__item hero-slider__item--img1">
                <div class="container hero-slider__item-container">
                    <div class="row">
                        <div class="col-md-8 offset-md-2">
                            <div class="post__meta-block post__meta-block--top">
                                <div class="post__category">
                                    <span class="label posts__cat-label">{{ __('breaking_news') }}</span>
                                </div>
                                <h1 class="page-heading__title">
                                    <a href="{{ route('article.detail', ['id' => $post->slug]) }}">{!! \Illuminate\Support\Str::limit($post->title, 50) !!}</a>
                                </h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>

    <div class="hero-slider-thumbs-wrapper">
        <div class="container">
            <div class="hero-slider-thumbs posts posts--simple-list">
                @foreach($breakingNewss as $post)
                    <div class="hero-slider-thumbs__item">
                        <div class="posts__item posts__item--category-1">
                            <div class="posts__inner">
                                <div class="posts__cat">
                                    <span class="label posts__cat-label">{{ __('breaking_news') }}</span>
                                </div>
                                <h6 class="posts__title">{!! \Illuminate\Support\Str::limit($post->title, 50) !!}</h6>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>

