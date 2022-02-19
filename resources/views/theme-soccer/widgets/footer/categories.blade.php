<div class="col-sm-6 col-lg-3 col-md-3">
    <div class="footer-col-inner">
        <!-- Widget: Popular Posts / End -->
        <div class="widget widget--footer widget-popular-posts">
            <h4 class="widget__title">{{ data_get($detail, 'title') }}</h4>
            <div class="widget__content">
                <ul class="posts posts--simple-list">
                    @foreach($content as $item )
                        @if ($loop->index > 10)
                            @break
                        @endif
                        <li class="posts__item posts__item--category-1">
                            <div class="posts__inner">
                                <h6 class="posts__title posts__title--color-hover">
                                    <a href="{{ url('category',$item->slug) }}">
                                        {{ $item->category_name }} <span class="float-right">({{ $item->post_count }})</span>
                                    </a>
                                </h6>
                            </div>
                        </li>
                    @endforeach
                </ul>
            </div>
        </div>
        <!-- Widget: Popular Posts / End -->
    </div>
</div>

