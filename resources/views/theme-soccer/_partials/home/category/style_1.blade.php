<!-- Latest News -->
<div class="card card--clean">
    <header class="card__header card__header--has-btn">
        <h4>
            @if(data_get($categorySection, 'label') == 'videos')
                {{__('videos')}}
            @else
                {{ \Illuminate\Support\Str::upper(data_get($categorySection, 'label')) }}
            @endif
        </h4>
        @if(!blank(data_get($categorySection, 'category.slug')))
            <a href="{{ url('category',data_get($categorySection, 'category.slug')) }}" class="btn btn-default btn-outline btn-xs card-header__button">See All News</a>
        @endif
    </header>
    <div class="card__content">
        <!-- Post Area 4 -->
        <div class="posts posts--cards post-grid row">
            @foreach($posts->take(4) as $value)
                @php $post = data_get($value, 'post') @endphp
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
                            <a href="{{ route('article.detail', ['id' => $post->slug]) }}">
                                @if(isFileExist($post->image, $result = @$post->image->medium_image_three))
                                    <img src=" {{basePath($post->image)}}/{{ $result }} " width="100%" height="100%" alt="{!! $post->title !!}">
                                @else
                                    <img src="{{static_asset('default-image/default-255x175.png') }} " class="img-fluid" alt="{!! $post->title !!}">
                                @endif
                            </a>
                        </figure>
                        <div class="posts__inner card__content">
                            {{--<a href="javascript:void(0)"--}}
                            {{--class="shareSocial posts__cta"--}}
                            {{--data-twitter="{{ share_twitter_url(route('article.detail', $post->slug)) }}"--}}
                            {{--data-fb="{{ share_facebook_url(route('article.detail', $post->slug)) }}"></a>--}}

                            <time datetime="{{$post->updated_at}}" class="posts__date">
                                <a href="{{route('article.date', date('Y-m-d', strtotime($post->updated_at)))}}">
                                    @if($post->updated_at <= \Carbon\Carbon::today())
                                        {{ $post->updated_at->format('F j, Y') }}
                                    @else
                                        {{ $post->updated_at->diffForHumans() }}
                                    @endif
                                </a>
                            </time>
                            <h6 class="posts__title"><a href="{{ route('article.detail', ['id' => $post->slug]) }}">{!! \Illuminate\Support\Str::limit($post->title,80) !!}</a></h6>
                            <div class="posts__excerpt">
                                {!! strip_tags(\Illuminate\Support\Str::limit($post->content, 155)) !!}
                            </div>
                        </div>
                        <footer class="posts__footer card__footer">
                            {{--<div class="post-author">--}}
                            {{--<div class="post-author__info">--}}
                            {{--<h4 class="post-author__name">--}}
                            {{--<a href="{{ route('site.author',['id' => $post['user']->id]) }}">{{ data_get($post, 'user.first_name') }}</a>--}}
                            {{--</h4>--}}
                            {{--</div>--}}
                            {{--</div>--}}
                            <ul class="post__meta meta">
                                <div class="sharethis-inline-share-buttons float-left" data-url="{{ route('article.detail', ['id' => $post->slug]) }}"></div>
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
