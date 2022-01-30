<div class="container mt-2 mb-0">
    @foreach($posts as $value)
        <div class="row">
            <div class="content col-lg-12 text-center">
                <article class="card card--sm post post--single">
                    <div class="card__content">
                        <header class="post__header">
                            <h2 class="post__title">
                                <a href="{{ route('article.detail', ['id' => $value->slug]) }}">
                                    {{ $value->title ?? '' }}
                                </a>
                            </h2>
                            <ul class="post__meta meta">
                                <li class="meta__item meta__item--date">
                                    <time datetime="{{ $value->updated_at }}">
                                        {{--@if($value->updated_at <= \Carbon\Carbon::today())--}}
                                            {{--{{ $value->updated_at->format('F j, Y') }}--}}
                                        {{--@else--}}
                                            {{--{{ $value->updated_at->diffForHumans() }}--}}
                                        {{--@endif--}}
                                        {{ $value->updated_at ?? '' }}
                                    </time>
                                </li>

                                <li class="meta__item meta__item--views">{{ $value->total_hit ?? 0 }}</li>
                            </ul>
                        </header>
                        <figure class="post__thumbnail">
                            <a href="{{ route('article.detail', ['id' => $value->slug]) }}">
                                @if(isFileExist($value->image, $result = @$value->image->original_image))
                                    <img src=" {{basePath($value->image)}}/{{ $result }} " width="100%" height="100%" alt="{!! $value->title !!}">
                                @else
                                    <img src="{{static_asset('default-image/default-255x175.png') }} " class="img-fluid" alt="{!! $value->title !!}">
                                @endif
                            </a>
                        </figure>
                        <div class="post__content mt-2">
                            {!! Str::limit(strip_tags($value->content), 255 ) !!}
                        </div>
                    </div>
                </article>
            </div>
        </div>

    @endforeach
</div>

