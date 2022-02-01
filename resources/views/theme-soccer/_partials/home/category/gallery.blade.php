<?php $images = data_get($album, 'galleryImages');  ?>
<div class="card card--clean mt-2">
    <header class="card__header card__header--has-btn">
        <h4>{{ \Illuminate\Support\Str::upper(data_get($categorySection, 'label')) }}</h4>
        @if(!blank(data_get($categorySection, 'category.slug')))
            <a href="{{ url('category',data_get($categorySection, 'category.slug')) }}" class="btn btn-default btn-outline btn-xs card-header__button">See All Images</a>
        @endif
    </header>
    <div class="card__content">
        <div class="card card--clean">
            <div class="card__content">
                <!-- Slider -->
                <div class="slick posts posts--slider-featured posts-slider posts-slider--center">
                    @foreach($images as $image)
                        <div class="posts__item posts__item--category-1">
                            <a href="#" class="posts__link-wrapper">
                                <figure class="posts__thumb gallery_thumb">
                                    @if(isFileExist($image, $result = @$image->original_image))
                                        <img src=" {{basePath($image)}}/{{ $result }} " width="100%" height="100%" alt="">
                                    @else
                                        <img src="{{static_asset('default-image/default-255x175.png') }} " class="img-fluid" alt="">
                                    @endif
                                </figure>
                            </a>
                        </div>
                    @endforeach
                </div>
                <!-- Slider / End -->
            </div>
        </div>
    </div>
</div>
