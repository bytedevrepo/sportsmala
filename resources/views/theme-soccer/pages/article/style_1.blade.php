<article class="card card--lg card--block post post--single">
    <figure class="post__thumbnail">
        @if(isFileExist(@$post->image, $result = @$post->image->big_image_two))
            <img src="{{ basePath(@$post->image) }}/{{ $result }}" alt="{!! $post->title !!}">
        @else
            <img src="{{static_asset('default-image/default-730x400.png') }} " alt="{!! $post->title !!}">
        @endif
    </figure>
    <!-- Post Meta - Side -->
    @if(@$post->user->permissions['author_show'] == 1)
        <div class="post__meta-block post__meta-block--side">
            <!-- Post Author -->
            <div class="post-author">
                <figure class="post-author__avatar">
                    @if(@$post->user->profile_image != null)
                        <img src="{{asset(@$post->user->profile_image)}}">
                    @else
                        <img src="{{static_asset('site/theme-soccer/assets/images/samples/avatar-empty.png') }}">
                    @endif
                </figure>
                <div class="post-author__info">
                    <h4 class="post-author__name">{{ @$post->user->first_name.' '.@$post->user->last_name}}</h4>
                </div>
            </div>
            <!-- Social Sharing -->
            <ul class="social-links social-links--btn">
                @if(@$post->user->social_media['facebook_url'] != null)
                    <li class="social-links__item">
                        <a href="{{ @$post->user->social_media['facebook_url'] }}" class="social-links__link social-links__link--fb"><i class="fa fa-facebook"></i></a>
                    </li>
                @endif
                @if(@$post->user->social_media['twitter_url'] != null)
                    <li class="social-links__item">
                        <a href="{{ @$post->user->social_media['twitter_url'] }}" class="social-links__link social-links__link--twitter"><i class="fa fa-twitter"></i></a>
                    </li>
                @endif
                @if(@$post->user->social_media['instagram_url'] != null)
                    <li><a href="{{ @$post->user->social_media['instagram_url'] }}"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                @endif
                @if(@$post->user->social_media['google_url'] != null)
                    <li class="social-links__item">
                        <a href="{{ @$post->user->social_media['google_url'] }}" class="social-links__link social-links__link--gplus"><i class="fa fa-google-plus"></i></a>
                    </li>
                @endif
                @if(@$post->user->social_media['pinterest_url'] != null)
                    <li class="social-links__item">
                        <a href="{{ @$post->user->social_media['pinterest_url'] }}" class="social-links__link"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                    </li>
                @endif
                @if(@$post->user->social_media['youtube_url'] != null)
                    <li><a href="{{ @$post->user->social_media['youtube_url'] }}" class="social-links__link"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
                @endif
                @if(@$post->user->social_media['linkedin_url'] != null)
                    <li><a href="{{ @$post->user->social_media['linkedin_url'] }}" class="social-links__link"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                @endif
            </ul>
            <!-- Post Meta Info -->
            <ul class="post__meta meta">
                <li class="meta__item meta__item--views">{{ $post->total_hit ?? 0 }}</li>
            </ul>
        </div>
    @endif
    <div class="card__content">
        <div class="post__category">
            @if(!blank($post->categories))
                @foreach($post->categories as $category)
                    <div class="label posts__cat-label">
                         <a href="{{ url('category',$category->slug) }}">
                             <span class="label posts__cat-label">{{ $category->category_name }}</span>
                         </a>
                    </div>
                @endforeach
            @endif
        </div>
        <header class="post__header">
            <h2 class="post__title">{!! $post->title ?? '' !!}</h2>
            <ul class="post__meta meta">
                <li class="meta__item meta__item--date">
                    <time datetime="{{ $post->updated_at }}">
                        <a href="{{route('article.date', date('Y-m-d', strtotime($post->updated_at)))}}">
                            @if($post->updated_at <= \Carbon\Carbon::today())
                                {{ $post->updated_at->format('F j, Y') }}
                            @else
                                {{ $post->updated_at->diffForHumans() }}
                            @endif
                        </a>
                    </time>
                </li>
                <li class="meta__item meta__item--views hidden-md hidden-lg">{{ $post->total_hit ?? 0 }}</li>
            </ul>
        </header>
        <div class="post__content">
            {!! $post->content ?? '' !!}
            @if(isset($post->read_more_link))
                <div class="pb-4">
                    <a href="{{ $post->read_more_link }}" class="btn btn-primary-inverse float-right" target="_blank">{{ __('read_actual_content') }} <i class="fa fa-long-arrow-right"></i></a>
                </div>
            @endif
        </div>

        @if($post->tags!=null)
            <footer class="post__footer">
                <div class="post__tags">
                    @if(!blank($tags = explode(',', $post->tags)))
                        @foreach($tags as $tag)
                            <a href="{{ url('tags/'.$tag) }}" class="btn btn-primary btn-outline btn-xs">{{ $tag }}</a>
                        @endforeach
                    @endif
                </div>
            </footer>
        @endif
    </div>
</article>
