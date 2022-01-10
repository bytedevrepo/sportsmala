<!-- Widget: Popular News -->
<aside class="widget widget--sidebar card widget-popular-posts">
    <div class="widget__title card__header">
        <h4>{{ data_get($detail, 'title') }}</h4>
    </div>
    <div class="widget__content card__content">
        <ul class="posts posts--simple-list">
            {{--{{dd($content)}}--}}
            @foreach($content as $post)
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
<!-- Widget: Popular News / End -->
