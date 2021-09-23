<div class="post-related">
    <div class="card card--clean">
        <div class="card__header">
            <h4>{{ __('related_post') }}</h4>
        </div>
        <div class="card__content">
            <div class="row posts--cards">
                @foreach($relatedPost as $item)
                    <div class="col-md-6">
                        <!-- Prev Post -->
                        <div class="posts__item posts__item--card posts__item--category-2 card">
                            <figure class="posts__thumb">
                                @isset($item->category->category_name)
                                    <div class="posts__cat">
                                        <a href="{{ url('category',$item->category->slug) }}">
                                            <span
                                                class="label posts__cat-label">{{ $item->category->category_name }}</span>
                                        </a>
                                    </div>
                                @endif
                                <a href="{{ route('article.detail', [$item->slug]) }}">
                                    @if(isFileExist(@$item->image, $result =  @$item->image->medium_image))
                                        <img src="{{ basePath(@$item->image) }}/{{ $result }}"
                                             alt="{!! $item->title !!}">
                                    @else
                                        <img src="{{static_asset('default-image/default-358x215.png') }}"
                                             alt="{!! $item->title !!}">
                                    @endif
                                </a>
                            </figure>

                            <div class="posts__inner card__content">
                                <a href="#" class="posts__cta"></a>
                                <time datetime="{{ $item->updated_at }}">
                                    <a href="{{route('article.date', date('Y-m-d', strtotime($item->updated_at)))}}">{{ $item->updated_at->format('F j, Y') }}</a>
                                </time>
                                <h6 class="posts__title">
                                    <a href="{{ route('article.detail', [$item->slug]) }}">{{ Illuminate\Support\Str::limit($item->title, 70, $end='...') }}</a>
                                </h6>
                            </div>
                            <footer class="posts__footer card__footer">
                                <div class="post-author">
                                    <div class="post-author__info">
                                        <h4 class="post-author__name">{{ data_get($item, 'user.first_name') }}</h4>
                                    </div>
                                </div>
                                <ul class="post__meta meta">
                                    <li class="meta__item meta__item--views">{{ $item->total_hit ?? 0 }}</li>
                                </ul>
                            </footer>
                        </div>
                        <!-- Prev Post / End -->
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
