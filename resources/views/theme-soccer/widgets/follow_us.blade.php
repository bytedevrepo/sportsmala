<!-- Widget: Standings / End --><!-- Widget: Social Buttons - Condensed-->
<aside class="widget widget--sidebar widget-social widget-social--condensed">
    @foreach($socialMedias as $socialMedia)
        <a href="{{ $socialMedia->url?? '#' }}" class="btn-social-counter" target="_blank" style="background:{{$socialMedia->icon_bg_color}}">
            <div class="btn-social-counter__icon">
                <i class="{{ $socialMedia->icon }}"></i>
            </div>
            <h6 class="btn-social-counter__title">{{$socialMedia->name}}</h6>
            <span class="btn-social-counter__count" style="background:{{$socialMedia->icon_bg_color}}"><span class="btn-social-counter__count-num"></span></span>
            <span class="btn-social-counter__add-icon"></span>
        </a>
    @endforeach
</aside>
<!-- Widget: Social Buttons - Condensed / End -->
