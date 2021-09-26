<!-- Latest News -->
<div class="card card--clean">
    <header class="card__header card__header--has-btn">
        <h4>
            {{ __('latest_post') }}
        </h4>
{{--        <a href="{{ url('category',data_get($categorySection, 'category.slug')) }}" class="btn btn-default btn-outline btn-xs card-header__button">See All Posts</a>--}}
    </header>
    <div class="card__content">
        <!-- Post Area 4 -->
        <div class="posts posts--cards post-grid row">
            @foreach($posts->take(4) as $post)
                <div class="post-grid__item col-sm-6">
                    <div class="posts__item posts__item--card posts__item--category-1 card">
                        <figure class="posts__thumb">
                            <div class="posts__cat">
                                @if(!blank($post->categories))
                                    @foreach($post->categories as $category)
                                        <a href="{{ url('category',$category->slug) }}">
                                            <span class="label posts__cat-label mb-1 ml-1">{{ $category->category_name }}</span>
                                        </a>
                                    @endforeach
                                @endif
                            </div>
                            <a href="#">
                                @if(isFileExist($post->image, $result = @$post->image->medium_image_three))
                                    <img src=" {{basePath($post->image)}}/{{ $result }} " width="100%" height="100%" alt="{!! $post->title !!}">
                                @else
                                    <img src="{{static_asset('default-image/default-255x175.png') }} " class="img-fluid" alt="{!! $post->title !!}">
                                @endif
                            </a>
                        </figure>
                        <div class="posts__inner card__content">
                            <a href="#" class="posts__cta"></a>
                            <time datetime="{{$post->updated_at}}" class="posts__date">
                                <a href="{{route('article.date', date('Y-m-d', strtotime($post->updated_at)))}}">{{ $post->updated_at->format('F j, Y') }}</a>
                            </time>
                            <h6 class="posts__title"><a href="{{ route('article.detail', ['id' => $post->slug]) }}">{!! \Illuminate\Support\Str::limit($post->title,80) !!}</a></h6>
                            <div class="posts__excerpt">
                                {!! strip_tags(\Illuminate\Support\Str::limit($post->content, 155)) !!}
                            </div>
                        </div>
                        <footer class="posts__footer card__footer">
                            <div class="post-author">
                                <div class="post-author__info">
                                    <h4 class="post-author__name">
                                        <a href="{{ route('site.author',['id' => $post['user']->id]) }}">{{ data_get($post, 'user.first_name') }}</a>
                                    </h4>
                                </div>
                            </div>
                            <ul class="post__meta meta">
                                <li class="meta__item meta__item--views">{{ $post->total_hit ?? 0 }}</li>
                            </ul>
                        </footer>
                    </div>
                </div>
            @endforeach
        </div>
        <!-- Post Area 4 / End -->
    </div>
</div>
