<div class="col-sm-6 col-lg-4">
    <div class="footer-col-inner">
        <!-- Widget: Popular Posts / End -->
        <div class="widget widget--footer widget-popular-posts">
            <h4 class="widget__title">{{ data_get($detail, 'title') }}</h4>
            <div class="widget__content">
                <ol class="list">
                    @foreach($content as $item )
                        @if ($loop->index > 6)
                            @break
                        @endif
                        <li><a href="{{ url('category',$item->slug) }}">{{ $item->category_name }} <span>({{ $item->post_count }})</span></a></li>
                    @endforeach
                </ol>
            </div>
        </div>
    </div>
</div>
