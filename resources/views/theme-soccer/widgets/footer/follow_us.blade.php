<div class="col-sm-6 col-lg-3 col-md-3">
    <div class="footer-col-inner">
        <div class="widget widget--footer widget-popular-posts">
            <h4 class="widget__title">FOLLOW US</h4>
            <div class="widget__content">
                @if(isset($socialMedias) AND !blank($socialMedias))
                    <ul class="posts posts--simple-list">
                        @foreach($socialMedias as $socialMedia)
                            <li class="social-links__item posts__item posts__item--category-1 mb-1">
                                <a href="{{ $socialMedia->url?? '#' }}" class="social-links__link">
                                  <span class="row" style="width: 100%;font-weight: bold">
                                        <span class="col-md-3"><i class="{{ $socialMedia->icon }} "></i></span>
                                    <span class="col-md-9" style="font-size: 14px">{{$socialMedia->name}}</span>
                                  </span>
                                </a>
                            </li>
                            <br>
                        @endforeach
                    </ul>
                @endif
            </div>
        </div>
    </div>
</div>
