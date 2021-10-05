<div class="col-sm-6 col-lg-4">
    <div class="footer-col-inner">
        <!-- Widget: Popular Posts / End -->
        <div class="widget widget--footer widget-popular-posts">
            <h4 class="widget__title">{{ data_get($detail, 'title') }}</h4>
            <div class="widget__content">
                <ul class="posts posts--simple-list">
                    @foreach($content as $post)
                        @if($loop->index > 2)
                            @break
                        @endif
                        @if(data_get(activeTheme(), 'options.footer_style') == 'footer_1')
                            <li class="posts__item posts__item--category-1">
                                <figure class="posts__thumb posts__thumb--hover">
                                    <a href="{{ route('article.detail', ['id' => $post->slug]) }}">
                                        @if(isFileExist(@$post->image, $result = @$post->image->small_image))
                                            <img src="{{basePath($post->image)}}/{{$result }}" alt="{!! $post->title !!}">
                                        @else
                                            <img src="{{static_asset('default-image/default-123x83.png') }}" alt="{!! $post->title !!}">
                                        @endif
                                    </a>
                                </figure>
                                <div class="posts__inner">
                                    <h6 class="posts__title posts__title--color-hover">
                                        <a href="{{ route('article.detail', [$post->slug]) }}">
                                            {{data_get($post, 'title')}}
                                        </a>
                                    </h6>
                                    <time datetime="2017-08-21" class="posts__date">
                                        {{ __('post_by') }}<a href="{{ route('site.author',['id' => $post->user->id]) }}"> {{ data_get($post, 'user.first_name') }}</a>
                                        ON
                                        <a href="{{route('article.date', date('Y-m-d', strtotime($post->updated_at)))}}">{{ $post->updated_at->format('F j, Y') }}</a>
                                    </time>
                                </div>
                            </li>
                        @endif
                    @endforeach
                </ul>
            </div>
        </div>
        <!-- Widget: Popular Posts / End -->
    </div>
</div>
