<div class="marquee-wrapper mt-1">
    <div class="container">
        <div class="marquee-label">{{ __("Breaking News") }}</div>
        <div class="marquee" data-startvisible="true" data-duration="18000" data-gap="10" data-duplicated="true">
            <ul class="posts posts--inline">
                @foreach($breakingNewss as $post)
                <li class="posts__item">
                    <h6 class="posts__title">
                        <a href="{{ route('article.detail', ['id' => $post->slug]) }}">{!! \Illuminate\Support\Str::limit($post->title, 255) !!}</a>
                    </h6>
                    {{--<div class="posts__excerpt">Lorem ipsum dolor sit amet consectetur adipisicing...</div>--}}
                </li>
                @endforeach
            </ul>
        </div>
    </div>
</div>
