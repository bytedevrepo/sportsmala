@if(!blank($ad))
    <div class="card card--clean">
       @if(data_get($ad, 'ad_type') == 'image')
           <a href="{{ data_get($ad, 'ad_url', '#') }}">
               @if(isFileExist(@$ad->adImage, $result = @$ad->adImage->original_image))
                   <img src=" {{basePath($ad->adImage)}}/{{ $result }}" alt="{!! $ad->ad_name !!}"  >
               @else
                   <img src="{{static_asset('default-image/default-add-728x90.png') }}" alt="{!! $ad->ad_name !!}" >
               @endif
           </a>
       @elseif(data_get($ad, 'ad_type') == 'code')
           {!! $ad->ad_code ?? '' !!}
       @elseif(data_get($ad, 'ad_type') == 'text')
           {!! $ad->ad_text ?? '' !!}
       @endif
   </div>
@endif
{{--<!-- Main News Banner -->--}}
{{--<div class="main-news-banner main-news-banner--soccer-ball">--}}
{{--<div class="main-news-banner__inner">--}}
{{--<div class="posts posts--simple-list posts--simple-list--xlg">--}}
{{--<div class="posts__item posts__item--category-1">--}}
{{--<div class="posts__inner">--}}
{{--<div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>--}}
{{--<h6 class="posts__title"><a href="#">Today was unveiled the <span class="main-news-banner__highlight">New Football</span> for the league</a></h6>--}}
{{--<time datetime="2016-08-23" class="posts__date">August 23rd, 2016</time>--}}
{{--<div class="posts__excerpt">Lorem ipsum dolor sit amet, consectetur adipisi nel elit, sed do eiusmod tempor incididunt ut labore et dolore.</div>--}}
{{--<div class="posts__more">--}}
{{--<a href="#" class="btn btn-inverse btn-sm btn-outline btn-icon-right btn-condensed">Read More <i class="fa fa-plus text-primary"></i></a>--}}
{{--</div>--}}
{{--</div>--}}
{{--</div>--}}
{{--</div>--}}
{{--</div>--}}
{{--</div>--}}
{{--<!-- Main News Banner / End -->--}}
