<aside class="widget widget--sidebar widget-social">
    @foreach($socialMedias as $socialMedia)
        <a href="{{ $socialMedia->url?? '#' }}" class="btn-social-counter btn-social-counter--fb" style="background:{{$socialMedia->icon_bg_color}}" target="_blank">
            <div class="btn-social-counter__icon" style="background:{{$socialMedia->icon_bg_color}}; filter: brightness(0.80);">
                <i class="{{ $socialMedia->icon }}"></i>
            </div>
            <h6 class="btn-social-counter__title">{{$socialMedia->name}}</h6>
            <span class="btn-social-counter__count"><span class="btn-social-counter__count-num"></span> Likes</span> <span class="btn-social-counter__add-icon"></span>
        </a>
    @endforeach
</aside>
