<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>{{settingHelper('seo_title')}}</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    @include('theme-soccer._partials.seo_og')

    {{-- icons --}}
    <link rel="icon" href="{{static_asset(settingHelper('favicon')) }}">
    <link rel="apple-touch-icon" sizes="144x144" href="{{static_asset('site/images/ico/apple-touch-icon-precomposed.png') }}">
    <link rel="apple-touch-icon" sizes="114x114" href="{{static_asset('site/images/ico/apple-touch-icon-114-precomposed.png') }}">
    <link rel="apple-touch-icon" sizes="72x72" href="{{static_asset('site/images/ico/apple-touch-icon-72-precomposed.png') }}">
    <link rel="apple-touch-icon" sizes="57x57" href="{{static_asset('site/images/ico/apple-touch-icon-57-precomposed.png') }}">
    <!-- Mobile Specific Metas================================================== -->
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0">
    <!-- Google Web Fonts================================================== -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CSource+Sans+Pro:400,700" rel="stylesheet">
    <!-- CSS================================================== --><!-- Vendor CSS -->
    <link href="{{ asset('site/theme-soccer/assets/vendor/bootstrap/css/bootstrap.css') }}" rel="stylesheet">
    <link href="{{ asset('site/theme-soccer/assets/fonts/font-awesome/css/all.min.css') }}" rel="stylesheet">
    <link href="{{ asset('site/theme-soccer/assets/fonts/font-awesome/css/v4-shims.min.css') }}" rel="stylesheet">
    <link href="{{ asset('site/theme-soccer/assets/fonts/simple-line-icons/css/simple-line-icons.css') }}" rel="stylesheet">
    <link href="{{ asset('site/theme-soccer/assets/vendor/magnific-popup/dist/magnific-popup.css') }}" rel="stylesheet">
    <link href="{{ asset('site/theme-soccer/assets/vendor/slick/slick.css') }}" rel="stylesheet">
    <!-- Template CSS-->
    <link href="{{ asset('site/theme-soccer/assets/css/style-soccer.css') }}" rel="stylesheet">
    <!-- Custom CSS-->
    <link href="{{ asset('site/theme-soccer/assets/css/custom.css') }}" rel="stylesheet">
    @yield('style')
    @if(settingHelper('predefined_header')!=null)
        {!! base64_decode(settingHelper('predefined_header')) !!}
    @endif
    @if(settingHelper('custom_header_style')!=null)
        {!! base64_decode(settingHelper('custom_header_style')) !!}
    @endif

    @include('feed::links')
    @stack('style')
    <script async src="https://www.googletagmanager.com/gtag/js?id={{ settingHelper('google_analytics_id') }}"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());
        gtag('config', '{{ settingHelper('google_analytics_id') }}');
    </script>
</head>
<body data-template="template-soccer" class="@if(settingHelper('preloader_option')==0) page-loader-disable @endif {{defaultModeCheck()}}">
<div class="site-wrapper clearfix">
    <div class="site-overlay"></div>
    <!-- Header================================================== --><!-- Header Mobile -->
    <div class="header-mobile clearfix" id="header-mobile">
        <div class="header-mobile__logo"><a href="_soccer_index.html">
                <img src="/site/theme-soccer/assets/images/soccer/logo.png" srcset="site/theme-soccer/assets/images/soccer/logo@2x.png 2x" alt="Alchemists" class="header-mobile__logo-img">
            </a>
        </div>
        <div class="header-mobile__inner">
            <a id="header-mobile__toggle" class="burger-menu-icon"><span class="burger-menu-icon__line"></span>
            </a>
            <span class="header-mobile__search-icon" id="header-mobile__search-icon"></span>
        </div>
    </div>
    <!-- Header Desktop -->
    @include('theme-soccer.layouts.header')
    <!-- Header / End -->
    <!-- Pushy Panel - Dark -->
    <aside class="pushy-panel pushy-panel--dark">
        <div class="pushy-panel__inner">
            <header class="pushy-panel__header">
                <div class="pushy-panel__logo">
                    <a href="_soccer_index.html">
                        <img src="/site/theme-soccer/assets/images/soccer/logo.png" srcset="assets/images/soccer/logo@2x.png 2x" alt="Alchemists">
                    </a>
                </div>
            </header>
            <div class="pushy-panel__content">
                <!-- Widget: Posts -->
                <aside class="widget widget-popular-posts widget--side-panel">
                    <div class="widget__content">
                        <ul class="posts posts--simple-list">
                            <li class="posts__item posts__item--category-1">
                                <figure class="posts__thumb"><a href="#"><img src="/site/theme-soccer/assets/images/samples/post-img19-xs.jpg" alt=""></a></figure>
                                <div class="posts__inner">
                                    <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                    <h6 class="posts__title"><a href="#">The Team will make a small vacation to the Caribbean</a></h6>
                                    <time datetime="2016-08-23" class="posts__date">June 12th, 2018</time>
                                </div>
                                <div class="posts__excerpt">Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                            </li>
                            <li class="posts__item posts__item--category-2">
                                <figure class="posts__thumb"><a href="#"><img src="/site/theme-soccer/assets/images/samples/post-img18-xs.jpg" alt=""></a></figure>
                                <div class="posts__inner">
                                    <div class="posts__cat"><span class="label posts__cat-label">Injuries</span></div>
                                    <h6 class="posts__title"><a href="#">Jenny Jackson won&#x27;t be able to play the next game</a></h6>
                                    <time datetime="2016-08-23" class="posts__date">May 15th, 2018</time>
                                </div>
                                <div class="posts__excerpt">Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                            </li>
                            <li class="posts__item posts__item--category-1">
                                <figure class="posts__thumb"><a href="#"><img src="/site/theme-soccer/assets/images/samples/post-img8-xs.jpg" alt=""></a></figure>
                                <div class="posts__inner">
                                    <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                    <h6 class="posts__title"><a href="#">The team is starting a new power breakfast regimen</a></h6>
                                    <time datetime="2016-08-23" class="posts__date">March 16th, 2018</time>
                                </div>
                                <div class="posts__excerpt">Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                            </li>
                            <li class="posts__item posts__item--category-3">
                                <figure class="posts__thumb"><a href="#"><img src="/site/theme-soccer/assets/images/samples/post-img20-xs.jpg" alt=""></a></figure>
                                <div class="posts__inner">
                                    <div class="posts__cat"><span class="label posts__cat-label">The League</span></div>
                                    <h6 class="posts__title"><a href="#">The Alchemists need two win the next two games</a></h6>
                                    <time datetime="2016-08-23" class="posts__date">February 8th, 2018</time>
                                </div>
                                <div class="posts__excerpt">Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                            </li>
                        </ul>
                    </div>
                </aside>
                <!-- Widget: Posts / End --><!-- Widget: Tag Cloud -->
                <aside class="widget widget--side-panel widget-tagcloud">
                    <div class="widget__title">
                        <h4>Popular Tags</h4>
                    </div>
                    <div class="widget__content">
                        <div class="tagcloud">
                            <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">PLAYOFFS</a>
                            <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">ALCHEMISTS</a>
                            <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">INJURIES</a>
                            <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">TEAM</a>
                            <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">INCORPORATIONS</a>
                            <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">UNIFORMS</a>
                            <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">CHAMPIONS</a>
                            <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">PROFESSIONAL</a>
                            <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">COACH</a>
                            <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">STADIUM</a>
                            <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">NEWS</a>
                            <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">PLAYERS</a>
                            <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">WOMEN DIVISION</a>
                            <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">AWARDS</a>
                        </div>
                    </div>
                </aside>
                <!-- Widget: Tag Cloud / End --><!-- Widget: Banner -->
                <aside class="widget widget--side-panel widget-banner">
                    <div class="widget__content">
                        <figure class="widget-banner__img"><a href="#"><img src="/site/theme-soccer/assets/images/samples/banner.jpg" alt="Banner"></a></figure>
                    </div>
                </aside>
                <!-- Widget: Banner / End -->
            </div>
            <a href="#" class="pushy-panel__back-btn"></a>
        </div>
    </aside>
    <!-- Pushy Panel - Dark / End --><!-- Hero Slider
            ================================================== -->
    <div class="hero-slider-wrapper">
        <div class="hero-slider">
            <!-- Slide #0 -->
            <div class="hero-slider__item hero-slider__item--img1">
                <div class="container hero-slider__item-container">
                    <div class="row">
                        <div class="col-md-8 offset-md-2">
                            <!-- Post Meta - Top -->
                            <div class="post__meta-block post__meta-block--top">
                                <!-- Post Category -->
                                <div class="post__category"><span class="label posts__cat-label">The Team</span></div>
                                <!-- Post Category / End --><!-- Post Title -->
                                <h1 class="page-heading__title">
                                    <a href="_soccer_blog-post-1.html">The Alchemists <span class="highlight">won the last game</span> 2-0 against Clovers</a>
                                </h1>
                                <!-- Post Title / End --><!-- Post Meta Info -->
                                <ul class="post__meta meta">
                                    <li class="meta__item meta__item--date"><time datetime="2017-08-23">August 28th, 2018</time></li>
                                    <li class="meta__item meta__item--views">2369</li>
                                    <li class="meta__item meta__item--likes"><a href="#"><i class="meta-like meta-like--active icon-heart"></i> 530</a></li>
                                    <li class="meta__item meta__item--comments"><a href="#">18</a></li>
                                </ul>
                                <!-- Post Meta Info / End --><!-- Post Author -->
                                <div class="post-author">
                                    <figure class="post-author__avatar"><img src="/site/theme-soccer/assets/images/samples/avatar-1.jpg" alt="Post Author Avatar"></figure>
                                    <div class="post-author__info">
                                        <h4 class="post-author__name">James Spiegel</h4>
                                        <span class="post-author__slogan">Alchemists Ninja</span>
                                    </div>
                                </div>
                                <!-- Post Author / End -->
                            </div>
                            <!-- Post Meta - Top / End -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- Slide #0 / End --><!-- Slide #1 -->
            <div class="hero-slider__item hero-slider__item--img2">
                <div class="container hero-slider__item-container">
                    <div class="row">
                        <div class="col-md-8 offset-md-2">
                            <!-- Post Meta - Top -->
                            <div class="post__meta-block post__meta-block--top">
                                <!-- Post Category -->
                                <div class="post__category"><span class="label posts__cat-label">Injuries</span></div>
                                <!-- Post Category / End --><!-- Post Title -->
                                <h1 class="page-heading__title">
                                    <a href="_soccer_blog-post-1.html">Franklin Stevens has <span class="highlight">a knee fracture</span> and is gona be out</a>
                                </h1>
                                <!-- Post Title / End --><!-- Post Meta Info -->
                                <ul class="post__meta meta">
                                    <li class="meta__item meta__item--date"><time datetime="2017-08-23">August 28th, 2018</time></li>
                                    <li class="meta__item meta__item--views">2369</li>
                                    <li class="meta__item meta__item--likes"><a href="#"><i class="meta-like meta-like--active icon-heart"></i> 530</a></li>
                                    <li class="meta__item meta__item--comments"><a href="#">18</a></li>
                                </ul>
                                <!-- Post Meta Info / End --><!-- Post Author -->
                                <div class="post-author">
                                    <figure class="post-author__avatar"><img src="/site/theme-soccer/assets/images/samples/avatar-1.jpg" alt="Post Author Avatar"></figure>
                                    <div class="post-author__info">
                                        <h4 class="post-author__name">James Spiegel</h4>
                                        <span class="post-author__slogan">Alchemists Ninja</span>
                                    </div>
                                </div>
                                <!-- Post Author / End -->
                            </div>
                            <!-- Post Meta - Top / End -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- Slide #1 / End --><!-- Slide #2 -->
            <div class="hero-slider__item hero-slider__item--img3">
                <div class="container hero-slider__item-container">
                    <div class="row">
                        <div class="col-md-8 offset-md-2">
                            <!-- Post Meta - Top -->
                            <div class="post__meta-block post__meta-block--top">
                                <!-- Post Category -->
                                <div class="post__category"><span class="label posts__cat-label">The Team</span></div>
                                <!-- Post Category / End --><!-- Post Title -->
                                <h1 class="page-heading__title">
                                    <a href="_soccer_blog-post-1.html">The New <span class="highlight">Eco Friendly Stadium</span> won a leafy award in 2016</a>
                                </h1>
                                <!-- Post Title / End --><!-- Post Meta Info -->
                                <ul class="post__meta meta">
                                    <li class="meta__item meta__item--date"><time datetime="2017-08-23">August 28th, 2018</time></li>
                                    <li class="meta__item meta__item--views">2369</li>
                                    <li class="meta__item meta__item--likes"><a href="#"><i class="meta-like meta-like--active icon-heart"></i> 530</a></li>
                                    <li class="meta__item meta__item--comments"><a href="#">18</a></li>
                                </ul>
                                <!-- Post Meta Info / End --><!-- Post Author -->
                                <div class="post-author">
                                    <figure class="post-author__avatar"><img src="/site/theme-soccer/assets/images/samples/avatar-1.jpg" alt="Post Author Avatar"></figure>
                                    <div class="post-author__info">
                                        <h4 class="post-author__name">James Spiegel</h4>
                                        <span class="post-author__slogan">Alchemists Ninja</span>
                                    </div>
                                </div>
                                <!-- Post Author / End -->
                            </div>
                            <!-- Post Meta - Top / End -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- Slide #2 / End -->
        </div>
        <div class="hero-slider-thumbs-wrapper">
            <div class="container">
                <div class="hero-slider-thumbs posts posts--simple-list">
                    <div class="hero-slider-thumbs__item">
                        <div class="posts__item posts__item--category-1">
                            <div class="posts__inner">
                                <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                <h6 class="posts__title">The Alchemists won the last game 2-0 against Clovers</h6>
                                <time datetime="2017-12-12" class="posts__date">August 28th, 2018</time>
                            </div>
                        </div>
                    </div>
                    <div class="hero-slider-thumbs__item">
                        <div class="posts__item posts__item--category-2">
                            <div class="posts__inner">
                                <div class="posts__cat"><span class="label posts__cat-label">Injuries</span></div>
                                <h6 class="posts__title">Franklin Stevens has a knee fracture and is gona be out</h6>
                                <time datetime="2017-12-12" class="posts__date">August 28th, 2018</time>
                            </div>
                        </div>
                    </div>
                    <div class="hero-slider-thumbs__item">
                        <div class="posts__item posts__item--category-1">
                            <div class="posts__inner">
                                <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                <h6 class="posts__title">The New Eco Friendly Stadium won a leafy award in 2016</h6>
                                <time datetime="2017-12-12" class="posts__date">August 28th, 2018</time>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Content
       ================================================== -->
    <div class="site-content">
        <div class="container">
            <div class="row">
                <!-- Content -->
                <div class="content col-lg-8">
                    <!-- Featured News -->
                    <div class="card card--clean">
                        <header class="card__header card__header--has-filter">
                            <h4>Featured News</h4>
                            <ul class="category-filter category-filter--featured">
                                <li class="category-filter__item"><a href="#" class="category-filter__link category-filter__link--reset category-filter__link--active">All</a></li>
                                <li class="category-filter__item"><a href="#" class="category-filter__link" data-category="posts__item--category-1">The Team</a></li>
                                <li class="category-filter__item"><a href="#" class="category-filter__link" data-category="posts__item--category-3">The League</a></li>
                                <li class="category-filter__item"><a href="#" class="category-filter__link" data-category="posts__item--category-2">Injuries</a></li>
                            </ul>
                        </header>
                        <div class="card__content">
                            <!-- Slider -->
                            <div class="slick posts posts--slider-featured posts-slider posts-slider--center">
                                <div class="posts__item posts__item--category-1">
                                    <a href="#" class="posts__link-wrapper">
                                        <figure class="posts__thumb"><img src="/site/theme-soccer/assets/images/soccer/samples/post-slide7.jpg" alt=""></figure>
                                        <div class="posts__inner">
                                            <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                            <h3 class="posts__title">The Planettroters will <span class="posts__title-higlight">perform this May 4th</span> at Madison Cube</h3>
                                            <div class="post-author">
                                                <figure class="post-author__avatar"><img src="/site/theme-soccer/assets/images/samples/avatar-4.jpg" alt="Post Author Avatar"></figure>
                                                <div class="post-author__info">
                                                    <h4 class="post-author__name">Jesse Stevens</h4>
                                                    <time datetime="2017-08-28" class="posts__date">August 28th, 2018</time>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="posts__item posts__item--category-3">
                                    <a href="#" class="posts__link-wrapper">
                                        <figure class="posts__thumb"><img src="/site/theme-soccer/assets/images/samples/post-slide2.jpg" alt=""></figure>
                                        <div class="posts__inner">
                                            <div class="posts__cat"><span class="label posts__cat-label">The League</span></div>
                                            <h3 class="posts__title">New York is preparing all <span class="posts__title-higlight">for the Playoffs Final</span> next December</h3>
                                            <div class="post-author">
                                                <figure class="post-author__avatar"><img src="/site/theme-soccer/assets/images/samples/avatar-1.jpg" alt="Post Author Avatar"></figure>
                                                <div class="post-author__info">
                                                    <h4 class="post-author__name">James Spiegel</h4>
                                                    <time datetime="2017-08-28" class="posts__date">June 28th, 2018</time>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="posts__item posts__item--category-1">
                                    <a href="#" class="posts__link-wrapper">
                                        <figure class="posts__thumb"><img src="/site/theme-soccer/assets/images/samples/post-slide3.jpg" alt=""></figure>
                                        <div class="posts__inner">
                                            <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                            <h3 class="posts__title">The new eco friendly <span class="posts__title-higlight">stadium won a Leafy</span> Award in 2016</h3>
                                            <div class="post-author">
                                                <figure class="post-author__avatar"><img src="/site/theme-soccer/assets/images/samples/avatar-1.jpg" alt="Post Author Avatar"></figure>
                                                <div class="post-author__info">
                                                    <h4 class="post-author__name">James Spiegel</h4>
                                                    <time datetime="2017-08-28" class="posts__date">June 28th, 2018</time>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="posts__item posts__item--category-3">
                                    <a href="#" class="posts__link-wrapper">
                                        <figure class="posts__thumb"><img src="/site/theme-soccer/assets/images/samples/post-slide4.jpg" alt=""></figure>
                                        <div class="posts__inner">
                                            <div class="posts__cat"><span class="label posts__cat-label">The League</span></div>
                                            <h3 class="posts__title">New York Islanders are <span class="posts__title-higlight">now flying to California</span> for the big game</h3>
                                            <div class="post-author">
                                                <figure class="post-author__avatar"><img src="/site/theme-soccer/assets/images/samples/avatar-1.jpg" alt="Post Author Avatar"></figure>
                                                <div class="post-author__info">
                                                    <h4 class="post-author__name">James Spiegel</h4>
                                                    <time datetime="2017-08-28" class="posts__date">June 28th, 2018</time>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="posts__item posts__item--category-3">
                                    <a href="#" class="posts__link-wrapper">
                                        <figure class="posts__thumb"><img src="/site/theme-soccer/assets/images/samples/post-slide6.jpg" alt=""></figure>
                                        <div class="posts__inner">
                                            <div class="posts__cat"><span class="label posts__cat-label">The League</span></div>
                                            <h3 class="posts__title">Jeremy Rittersen was <span class="posts__title-higlight">called to be</span> in the National Team</h3>
                                            <div class="post-author">
                                                <figure class="post-author__avatar"><img src="/site/theme-soccer/assets/images/samples/avatar-2.jpg" alt="Post Author Avatar"></figure>
                                                <div class="post-author__info">
                                                    <h4 class="post-author__name">Jessica Hoops</h4>
                                                    <time datetime="2017-08-28" class="posts__date">May 24th, 2018</time>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="posts__item posts__item--category-2">
                                    <a href="#" class="posts__link-wrapper">
                                        <figure class="posts__thumb"><img src="/site/theme-soccer/assets/images/samples/post-slide5.jpg" alt=""></figure>
                                        <div class="posts__inner">
                                            <div class="posts__cat"><span class="label posts__cat-label">Injuries</span></div>
                                            <h3 class="posts__title">Jessica Valentine has a <span class="posts__title-higlight">sprained ankle</span> and won't be in the Final</h3>
                                            <div class="post-author">
                                                <figure class="post-author__avatar"><img src="/site/theme-soccer/assets/images/samples/avatar-4.jpg" alt="Post Author Avatar"></figure>
                                                <div class="post-author__info">
                                                    <h4 class="post-author__name">Jesse Stevens</h4>
                                                    <time datetime="2017-08-28" class="posts__date">April 12th, 2018</time>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <!-- Slider / End -->
                        </div>
                    </div>
                    <!-- Featured News / End --><!-- Post Area 1 -->
                    <div class="posts posts--cards post-grid row">
                        <div class="post-grid__item col-sm-6">
                            <div class="posts__item posts__item--card posts__item--category-1 card">
                                <figure class="posts__thumb">
                                    <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                    <a href="#"><img src="/site/theme-soccer/assets/images/soccer/samples/_soccer_post-img3.jpg" alt=""></a>
                                </figure>
                                <div class="posts__inner card__content">
                                    <a href="#" class="posts__cta"></a> <time datetime="2016-08-23" class="posts__date">August 28th, 2018</time>
                                    <h6 class="posts__title"><a href="#">Brian Kingster saw the red card after a kick against Jason T.</a></h6>
                                    <div class="posts__excerpt">
                                        Lorem ipsum dolor sit amet, consectetur adipisi nel elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                        Ut enim ad mini veniam, quis nostrud en derum sum laborem.
                                    </div>
                                </div>
                                <footer class="posts__footer card__footer">
                                    <div class="post-author">
                                        <figure class="post-author__avatar"><img src="/site/theme-soccer/assets/images/samples/avatar-1.jpg" alt="Post Author Avatar"></figure>
                                        <div class="post-author__info">
                                            <h4 class="post-author__name">James Spiegel</h4>
                                        </div>
                                    </div>
                                    <ul class="post__meta meta">
                                        <li class="meta__item meta__item--views">2369</li>
                                        <li class="meta__item meta__item--likes"><a href="#"><i class="meta-like icon-heart"></i> 530</a></li>
                                        <li class="meta__item meta__item--comments"><a href="#">18</a></li>
                                    </ul>
                                </footer>
                            </div>
                        </div>
                        <div class="post-grid__item col-sm-6">
                            <div class="posts__item posts__item--card posts__item--category-1 card">
                                <figure class="posts__thumb">
                                    <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                    <a href="#"><img src="/site/theme-soccer/assets/images/soccer/samples/_soccer_post-img1.jpg" alt=""></a>
                                </figure>
                                <div class="posts__inner card__content">
                                    <a href="#" class="posts__cta"></a> <time datetime="2016-08-23" class="posts__date">August 28th, 2018</time>
                                    <h6 class="posts__title"><a href="#">The new eco friendly stadium won a Leafy Award in 2016</a></h6>
                                    <div class="posts__excerpt">
                                        Lorem ipsum dolor sit amet, consectetur adipisi nel elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                        Ut enim ad mini veniam, quis nostrud en derum sum laborem.
                                    </div>
                                </div>
                                <footer class="posts__footer card__footer">
                                    <div class="post-author">
                                        <figure class="post-author__avatar"><img src="/site/theme-soccer/assets/images/samples/avatar-2.jpg" alt="Post Author Avatar"></figure>
                                        <div class="post-author__info">
                                            <h4 class="post-author__name">Jessica Hoops</h4>
                                        </div>
                                    </div>
                                    <ul class="post__meta meta">
                                        <li class="meta__item meta__item--views">2369</li>
                                        <li class="meta__item meta__item--likes"><a href="#"><i class="meta-like icon-heart"></i> 530</a></li>
                                        <li class="meta__item meta__item--comments"><a href="#">18</a></li>
                                    </ul>
                                </footer>
                            </div>
                        </div>
                        <div class="post-grid__item col-sm-6">
                            <div class="posts__item posts__item--card posts__item--category-1 card">
                                <figure class="posts__thumb">
                                    <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                    <a href="#"><img src="/site/theme-soccer/assets/images/samples/post-img3.jpg" alt=""></a>
                                </figure>
                                <div class="posts__inner card__content">
                                    <a href="#" class="posts__cta"></a> <time datetime="2016-08-23" class="posts__date">August 28th, 2018</time>
                                    <h6 class="posts__title"><a href="#">The team is taking a summer vacation on Woody Valley</a></h6>
                                    <div class="posts__excerpt">
                                        Lorem ipsum dolor sit amet, consectetur adipisi nel elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                        Ut enim ad mini veniam, quis nostrud en derum sum laborem.
                                    </div>
                                </div>
                                <footer class="posts__footer card__footer">
                                    <div class="post-author">
                                        <figure class="post-author__avatar"><img src="/site/theme-soccer/assets/images/samples/avatar-2.jpg" alt="Post Author Avatar"></figure>
                                        <div class="post-author__info">
                                            <h4 class="post-author__name">Jessica Hoops</h4>
                                        </div>
                                    </div>
                                    <ul class="post__meta meta">
                                        <li class="meta__item meta__item--views">2369</li>
                                        <li class="meta__item meta__item--likes"><a href="#"><i class="meta-like icon-heart"></i> 530</a></li>
                                        <li class="meta__item meta__item--comments"><a href="#">18</a></li>
                                    </ul>
                                </footer>
                            </div>
                        </div>
                        <div class="post-grid__item col-sm-6">
                            <div class="posts__item posts__item--card posts__item--category-1 card">
                                <figure class="posts__thumb">
                                    <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                    <a href="#"><img src="/site/theme-soccer/assets/images/samples/post-img5.jpg" alt=""></a>
                                </figure>
                                <div class="posts__inner card__content">
                                    <a href="#" class="posts__cta"></a> <time datetime="2016-08-23" class="posts__date">August 28th, 2018</time>
                                    <h6 class="posts__title"><a href="#">The Alchemists team is appearing in L.A. beach for chartiy</a></h6>
                                    <div class="posts__excerpt">
                                        Lorem ipsum dolor sit amet, consectetur adipisi nel elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                        Ut enim ad mini veniam, quis nostrud en derum sum laborem.
                                    </div>
                                </div>
                                <footer class="posts__footer card__footer">
                                    <div class="post-author">
                                        <figure class="post-author__avatar"><img src="/site/theme-soccer/assets/images/samples/avatar-1.jpg" alt="Post Author Avatar"></figure>
                                        <div class="post-author__info">
                                            <h4 class="post-author__name">James Spiegel</h4>
                                        </div>
                                    </div>
                                    <ul class="post__meta meta">
                                        <li class="meta__item meta__item--views">2369</li>
                                        <li class="meta__item meta__item--likes"><a href="#"><i class="meta-like icon-heart"></i> 530</a></li>
                                        <li class="meta__item meta__item--comments"><a href="#">18</a></li>
                                    </ul>
                                </footer>
                            </div>
                        </div>
                    </div>
                    <!-- Post Area 1 / End --><!-- Post Area 2 -->
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="card">
                                <div class="card__content">
                                    <ul class="posts posts--simple-list">
                                        <li class="posts__item posts__item--category-1">
                                            <figure class="posts__thumb"><a href="#"><img src="/site/theme-soccer/assets/images/samples/post-img22-xs.jpg" alt=""></a></figure>
                                            <div class="posts__inner">
                                                <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                                <h6 class="posts__title"><a href="#">Brian Kingster was penalized with four games out</a></h6>
                                                <time datetime="2016-08-23" class="posts__date">August 28th, 2018</time>
                                            </div>
                                            <div class="posts__excerpt posts__excerpt--space-sm">
                                                Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                            </div>
                                        </li>
                                        <li class="posts__item posts__item--category-1">
                                            <figure class="posts__thumb"><a href="#"><img src="/site/theme-soccer/assets/images/samples/post-img23-xs.jpg" alt=""></a></figure>
                                            <div class="posts__inner">
                                                <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                                <h6 class="posts__title"><a href="#">The next game will be played at California Beach</a></h6>
                                                <time datetime="2016-08-23" class="posts__date">August 28th, 2018</time>
                                            </div>
                                            <div class="posts__excerpt posts__excerpt--space-sm">
                                                Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                            </div>
                                        </li>
                                        <li class="posts__item posts__item--category-3">
                                            <figure class="posts__thumb"><a href="#"><img src="/site/theme-soccer/assets/images/samples/post-img20-xs.jpg" alt=""></a></figure>
                                            <div class="posts__inner">
                                                <div class="posts__cat"><span class="label posts__cat-label">The League</span></div>
                                                <h6 class="posts__title"><a href="#">The Alchemists need two win the next two games</a></h6>
                                                <time datetime="2016-08-23" class="posts__date">August 28th, 2018</time>
                                            </div>
                                            <div class="posts__excerpt posts__excerpt--space-sm">
                                                Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="card">
                                <div class="card__content">
                                    <ul class="posts posts--simple-list">
                                        <li class="posts__item posts__item--category-1">
                                            <figure class="posts__thumb"><a href="#"><img src="/site/theme-soccer/assets/images/samples/post-img24-xs.jpg" alt=""></a></figure>
                                            <div class="posts__inner">
                                                <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                                <h6 class="posts__title"><a href="#">he team will make a small vacation to the Caribbean</a></h6>
                                                <time datetime="2016-08-23" class="posts__date">August 28th, 2018</time>
                                            </div>
                                            <div class="posts__excerpt posts__excerpt--space-sm">
                                                Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                            </div>
                                        </li>
                                        <li class="posts__item posts__item--category-2">
                                            <figure class="posts__thumb"><a href="#"><img src="/site/theme-soccer/assets/images/samples/post-img18-xs.jpg" alt=""></a></figure>
                                            <div class="posts__inner">
                                                <div class="posts__cat"><span class="label posts__cat-label">Injuries</span></div>
                                                <h6 class="posts__title"><a href="#">Jenny Jackson won&#x27;t be able to play next game</a></h6>
                                                <time datetime="2016-08-23" class="posts__date">August 28th, 2018</time>
                                            </div>
                                            <div class="posts__excerpt posts__excerpt--space-sm">
                                                Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                            </div>
                                        </li>
                                        <li class="posts__item posts__item--category-3">
                                            <figure class="posts__thumb"><a href="#"><img src="/site/theme-soccer/assets/images/samples/post-img4-xs.jpg" alt=""></a></figure>
                                            <div class="posts__inner">
                                                <div class="posts__cat"><span class="label posts__cat-label">The League</span></div>
                                                <h6 class="posts__title"><a href="#">The team is starting a new power breakfast regimen</a></h6>
                                                <time datetime="2016-08-23" class="posts__date">August 28th, 2018</time>
                                            </div>
                                            <div class="posts__excerpt posts__excerpt--space-sm">
                                                Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Post Area 2 / End --><!-- Main News Banner -->
                    <div class="main-news-banner main-news-banner--soccer-ball">
                        <div class="main-news-banner__inner">
                            <div class="posts posts--simple-list posts--simple-list--xlg">
                                <div class="posts__item posts__item--category-1">
                                    <div class="posts__inner">
                                        <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                        <h6 class="posts__title"><a href="#">Today was unveiled the <span class="main-news-banner__highlight">New Football</span> for the league</a></h6>
                                        <time datetime="2016-08-23" class="posts__date">August 23rd, 2016</time>
                                        <div class="posts__excerpt">Lorem ipsum dolor sit amet, consectetur adipisi nel elit, sed do eiusmod tempor incididunt ut labore et dolore.</div>
                                        <div class="posts__more">
                                            <a href="#" class="btn btn-inverse btn-sm btn-outline btn-icon-right btn-condensed">Read More <i class="fa fa-plus text-primary"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Main News Banner / End --><!-- Lates News -->
                    <div class="card card--clean">
                        <header class="card__header card__header--has-btn">
                            <h4>Latest News</h4>
                            <a href="#" class="btn btn-default btn-outline btn-xs card-header__button">See All Posts</a>
                        </header>
                        <div class="card__content">
                            <!-- Post Area 4 -->
                            <div class="posts posts--cards post-grid row">
                                <div class="post-grid__item col-sm-6">
                                    <div class="posts__item posts__item--card posts__item--category-2 card">
                                        <figure class="posts__thumb">
                                            <div class="posts__cat"><span class="label posts__cat-label">Injuries</span></div>
                                            <a href="#"><img src="/site/theme-soccer/assets/images/samples/post-img1.jpg" alt=""></a>
                                        </figure>
                                        <div class="posts__inner card__content">
                                            <a href="#" class="posts__cta"></a> <time datetime="2016-08-23" class="posts__date">August 28th, 2018</time>
                                            <h6 class="posts__title"><a href="#">Franklin Stevens has a knee fracture and is gonna be out</a></h6>
                                        </div>
                                        <footer class="posts__footer card__footer">
                                            <div class="post-author">
                                                <figure class="post-author__avatar"><img src="/site/theme-soccer/assets/images/samples/avatar-1.jpg" alt="Post Author Avatar"></figure>
                                                <div class="post-author__info">
                                                    <h4 class="post-author__name">James Spiegel</h4>
                                                </div>
                                            </div>
                                            <ul class="post__meta meta">
                                                <li class="meta__item meta__item--views">2369</li>
                                                <li class="meta__item meta__item--likes"><a href="#"><i class="meta-like icon-heart"></i> 530</a></li>
                                                <li class="meta__item meta__item--comments"><a href="#">18</a></li>
                                            </ul>
                                        </footer>
                                    </div>
                                </div>
                                <div class="post-grid__item col-sm-6">
                                    <div class="posts__item posts__item--card posts__item--category-1 card">
                                        <figure class="posts__thumb">
                                            <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                            <a href="#"><img src="/site/theme-soccer/assets/images/soccer/samples/_soccer_post-img4.jpg" alt=""></a>
                                        </figure>
                                        <div class="posts__inner card__content">
                                            <a href="#" class="posts__cta"></a> <time datetime="2016-08-23" class="posts__date">August 28th, 2018</time>
                                            <h6 class="posts__title"><a href="#">Jay Rorks is only 24 points away from breaking the record</a></h6>
                                        </div>
                                        <footer class="posts__footer card__footer">
                                            <div class="post-author">
                                                <figure class="post-author__avatar"><img src="/site/theme-soccer/assets/images/samples/avatar-2.jpg" alt="Post Author Avatar"></figure>
                                                <div class="post-author__info">
                                                    <h4 class="post-author__name">Jessica Hoops</h4>
                                                </div>
                                            </div>
                                            <ul class="post__meta meta">
                                                <li class="meta__item meta__item--views">2369</li>
                                                <li class="meta__item meta__item--likes"><a href="#"><i class="meta-like icon-heart"></i> 530</a></li>
                                                <li class="meta__item meta__item--comments"><a href="#">18</a></li>
                                            </ul>
                                        </footer>
                                    </div>
                                </div>
                                <div class="post-grid__item col-sm-6">
                                    <div class="posts__item posts__item--card posts__item--category-1 card">
                                        <figure class="posts__thumb">
                                            <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                            <a href="#"><img src="/site/theme-soccer/assets/images/samples/post-img13.jpg" alt=""></a>
                                        </figure>
                                        <div class="posts__inner card__content">
                                            <a href="#" class="posts__cta"></a> <time datetime="2016-08-23" class="posts__date">August 28th, 2018</time>
                                            <h6 class="posts__title"><a href="#">The team is starting a new power breakfast regimen</a></h6>
                                        </div>
                                        <footer class="posts__footer card__footer">
                                            <div class="post-author">
                                                <figure class="post-author__avatar"><img src="/site/theme-soccer/assets/images/samples/avatar-1.jpg" alt="Post Author Avatar"></figure>
                                                <div class="post-author__info">
                                                    <h4 class="post-author__name">James Spiegel</h4>
                                                </div>
                                            </div>
                                            <ul class="post__meta meta">
                                                <li class="meta__item meta__item--views">2369</li>
                                                <li class="meta__item meta__item--likes"><a href="#"><i class="meta-like icon-heart"></i> 530</a></li>
                                                <li class="meta__item meta__item--comments"><a href="#">18</a></li>
                                            </ul>
                                        </footer>
                                    </div>
                                </div>
                                <div class="post-grid__item col-sm-6">
                                    <div class="posts__item posts__item--card posts__item--category-1 card">
                                        <figure class="posts__thumb">
                                            <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                            <a href="#"><img src="assets/images/samples/post-img2.jpg" alt=""></a>
                                        </figure>
                                        <div class="posts__inner card__content">
                                            <a href="#" class="posts__cta"></a> <time datetime="2016-08-23" class="posts__date">August 28th, 2018</time>
                                            <h6 class="posts__title"><a href="#">Cheerleader tryouts will start next Friday at 5pm</a></h6>
                                        </div>
                                        <footer class="posts__footer card__footer">
                                            <div class="post-author">
                                                <figure class="post-author__avatar"><img src="assets/images/samples/avatar-1.jpg" alt="Post Author Avatar"></figure>
                                                <div class="post-author__info">
                                                    <h4 class="post-author__name">James Spiegel</h4>
                                                </div>
                                            </div>
                                            <ul class="post__meta meta">
                                                <li class="meta__item meta__item--views">2369</li>
                                                <li class="meta__item meta__item--likes"><a href="#"><i class="meta-like icon-heart"></i> 530</a></li>
                                                <li class="meta__item meta__item--comments"><a href="#">18</a></li>
                                            </ul>
                                        </footer>
                                    </div>
                                </div>
                            </div>
                            <!-- Post Area 4 / End -->
                        </div>
                    </div>
                    <!-- Lates News / End --><!-- Post Pagination -->
                    <nav class="post-pagination" aria-label="Blog navigation">
                        <ul class="pagination pagination--condensed pagination--lg justify-content-center">
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><span class="page-link">...</span></li>
                            <li class="page-item"><a class="page-link" href="#">16</a></li>
                        </ul>
                    </nav>
                    <!-- Post Pagination / End -->
                </div>
                <!-- Content / End --><!-- Sidebar -->
                <div id="sidebar" class="sidebar col-lg-4">
                    <!-- Widget: Standings -->
                    <aside class="widget card widget--sidebar widget-standings">
                        <div class="widget__title card__header card__header--has-btn">
                            <h4>West League 2018</h4>
                            <a href="#" class="btn btn-default btn-outline btn-xs card-header__button">See All Stats</a>
                        </div>
                        <div class="widget__content card__content">
                            <div class="table-responsive">
                                <table class="table table-hover table-standings">
                                    <thead>
                                    <tr>
                                        <th>Team Positions</th>
                                        <th>W</th>
                                        <th>L</th>
                                        <th>D</th>
                                        <th>PTS</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>
                                            <div class="team-meta">
                                                <figure class="team-meta__logo"><img src="assets/images/samples/logos/pirates_shield.png" alt=""></figure>
                                                <div class="team-meta__info">
                                                    <h6 class="team-meta__name">L.A Pirates</h6>
                                                    <span class="team-meta__place">Bebop Institute</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td>36</td>
                                        <td>14</td>
                                        <td>10</td>
                                        <td>118</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="team-meta">
                                                <figure class="team-meta__logo"><img src="assets/images/samples/logos/sharks_shield.png" alt=""></figure>
                                                <div class="team-meta__info">
                                                    <h6 class="team-meta__name">Sharks</h6>
                                                    <span class="team-meta__place">Marine College</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td>32</td>
                                        <td>20</td>
                                        <td>8</td>
                                        <td>104</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="team-meta">
                                                <figure class="team-meta__logo"><img src="assets/images/samples/logos/alchemists_b_shield.png" alt=""></figure>
                                                <div class="team-meta__info">
                                                    <h6 class="team-meta__name">The Alchemists</h6>
                                                    <span class="team-meta__place">Eric Bros School</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td>32</td>
                                        <td>21</td>
                                        <td>7</td>
                                        <td>103</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="team-meta">
                                                <figure class="team-meta__logo"><img src="assets/images/samples/logos/ocean_kings_shield.png" alt=""></figure>
                                                <div class="team-meta__info">
                                                    <h6 class="team-meta__name">Ocean Kings</h6>
                                                    <span class="team-meta__place">Bay College</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td>30</td>
                                        <td>20</td>
                                        <td>10</td>
                                        <td>100</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="team-meta">
                                                <figure class="team-meta__logo"><img src="assets/images/samples/logos/red_wings_shield.png" alt=""></figure>
                                                <div class="team-meta__info">
                                                    <h6 class="team-meta__name">Red Wings</h6>
                                                    <span class="team-meta__place">Icarus College</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td>28</td>
                                        <td>24</td>
                                        <td>8</td>
                                        <td>92</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="team-meta">
                                                <figure class="team-meta__logo"><img src="assets/images/samples/logos/lucky_clovers_shield.png" alt=""></figure>
                                                <div class="team-meta__info">
                                                    <h6 class="team-meta__name">Lucky Clovers</h6>
                                                    <span class="team-meta__place">St. Patrick’s Institute</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td>27</td>
                                        <td>24</td>
                                        <td>9</td>
                                        <td>90</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="team-meta">
                                                <figure class="team-meta__logo"><img src="assets/images/samples/logos/draconians_shield.png" alt=""></figure>
                                                <div class="team-meta__info">
                                                    <h6 class="team-meta__name">Draconians</h6>
                                                    <span class="team-meta__place">High Rock College</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td>25</td>
                                        <td>28</td>
                                        <td>7</td>
                                        <td>82</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="team-meta">
                                                <figure class="team-meta__logo"><img src="assets/images/samples/logos/bloody_wave_shield.png" alt=""></figure>
                                                <div class="team-meta__info">
                                                    <h6 class="team-meta__name">Bloody Wave</h6>
                                                    <span class="team-meta__place">Atlantic School</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td>24</td>
                                        <td>30</td>
                                        <td>6</td>
                                        <td>78</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </aside>
                    <!-- Widget: Standings / End --><!-- Widget: Social Buttons - Condensed-->
                    <aside class="widget widget--sidebar widget-social widget-social--condensed">
                        <a href="#" class="btn-social-counter btn-social-counter--fb" target="_blank">
                            <div class="btn-social-counter__icon"><i class="fa fa-facebook"></i></div>
                            <h6 class="btn-social-counter__title">Like Our Facebook Page</h6>
                            <span class="btn-social-counter__count"><span class="btn-social-counter__count-num"></span> Likes</span> <span class="btn-social-counter__add-icon"></span>
                        </a>
                        <a href="#" class="btn-social-counter btn-social-counter--twitter" target="_blank">
                            <div class="btn-social-counter__icon"><i class="fa fa-twitter"></i></div>
                            <h6 class="btn-social-counter__title">Follow Us on Twitter</h6>
                            <span class="btn-social-counter__count"><span class="btn-social-counter__count-num"></span> Followers</span> <span class="btn-social-counter__add-icon"></span>
                        </a>
                        <a href="#" class="btn-social-counter btn-social-counter--rss" target="_blank">
                            <div class="btn-social-counter__icon"><i class="fa fa-rss"></i></div>
                            <h6 class="btn-social-counter__title">Subscribe to Our RSS</h6>
                            <span class="btn-social-counter__count"><span class="btn-social-counter__count-num">840</span> Subscribers</span> <span class="btn-social-counter__add-icon"></span>
                        </a>
                    </aside>
                    <!-- Widget: Social Buttons - Condensed / End --><!-- Widget: Popular News -->
                    <aside class="widget widget--sidebar card widget-popular-posts">
                        <div class="widget__title card__header">
                            <h4>Popular News</h4>
                        </div>
                        <div class="widget__content card__content">
                            <ul class="posts posts--simple-list">
                                <li class="posts__item posts__item--category-2">
                                    <figure class="posts__thumb"><a href="#"><img src="assets/images/samples/post-img1-xs.jpg" alt=""></a></figure>
                                    <div class="posts__inner">
                                        <div class="posts__cat"><span class="label posts__cat-label">Injuries</span></div>
                                        <h6 class="posts__title"><a href="#">Mark Johnson has a Tibia Fracture and is gonna be out</a></h6>
                                        <time datetime="2016-08-23" class="posts__date">August 23rd, 2018</time>
                                    </div>
                                </li>
                                <li class="posts__item posts__item--category-1">
                                    <figure class="posts__thumb"><a href="#"><img src="assets/images/samples/post-img2-xs.jpg" alt=""></a></figure>
                                    <div class="posts__inner">
                                        <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                        <h6 class="posts__title"><a href="#">Jay Rorks is only 24 points away from breaking the record</a></h6>
                                        <time datetime="2016-08-23" class="posts__date">August 22nd, 2018</time>
                                    </div>
                                </li>
                                <li class="posts__item posts__item--category-1">
                                    <figure class="posts__thumb"><a href="#"><img src="assets/images/samples/post-img3-xs.jpg" alt=""></a></figure>
                                    <div class="posts__inner">
                                        <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                        <h6 class="posts__title"><a href="#">The new eco friendly stadium won a Leafy Award in 2016</a></h6>
                                        <time datetime="2016-08-23" class="posts__date">June 8th, 2018</time>
                                    </div>
                                </li>
                                <li class="posts__item posts__item--category-1">
                                    <figure class="posts__thumb"><a href="#"><img src="assets/images/samples/post-img4-xs.jpg" alt=""></a></figure>
                                    <div class="posts__inner">
                                        <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                        <h6 class="posts__title"><a href="#">The team is starting a new power breakfast regimen</a></h6>
                                        <time datetime="2016-08-23" class="posts__date">May 12th, 2018</time>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </aside>
                    <!-- Widget: Popular News / End --><!-- Widget: Featured Player -->
                    <aside class="widget card widget--sidebar widget-player widget-player--soccer">
                        <div class="widget__content card__content">
                            <div class="widget-player__ribbon">
                                <div class="fa fa-star"></div>
                            </div>
                            <figure class="widget-player__photo"><img src="assets/images/soccer/samples/_soccer_widget-featured-player.png" alt=""></figure>
                            <header class="widget-player__header clearfix">
                                <div class="widget-player__number">07</div>
                                <h4 class="widget-player__name"><span class="widget-player__first-name">James</span> <span class="widget-player__last-name">Messinal</span></h4>
                            </header>
                            <div class="widget-player__content">
                                <div class="widget-player__content-inner">
                                    <div class="widget-player__stat widget-player__goals">
                                        <div class="widget-player__stat-number">104</div>
                                        <h6 class="widget-player__stat-label">Goals</h6>
                                    </div>
                                    <div class="widget-player__stat widget-player__shots">
                                        <div class="widget-player__stat-number">129</div>
                                        <h6 class="widget-player__stat-label">Shots</h6>
                                    </div>
                                    <div class="widget-player__stat widget-player__assists">
                                        <div class="widget-player__stat-number">57</div>
                                        <h6 class="widget-player__stat-label">Assists</h6>
                                    </div>
                                    <div class="widget-player__stat widget-player__games">
                                        <div class="widget-player__stat-number">86</div>
                                        <h6 class="widget-player__stat-label">Games</h6>
                                    </div>
                                </div>
                                <div class="widget-player__content-alt">
                                    <!-- Progress: Shot Accuracy -->
                                    <div class="progress-stats">
                                        <div class="progress__label">SHOT ACC</div>
                                        <div class="progress">
                                            <div class="progress__bar progress__bar--success progress__bar-width-90" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        <div class="progress__number">96%</div>
                                    </div>
                                    <!-- Progress: Shot Accuracy / End --><!-- Progress: Pass Accuracy -->
                                    <div class="progress-stats">
                                        <div class="progress__label">PASS ACC</div>
                                        <div class="progress">
                                            <div class="progress__bar progress__bar--success progress__bar-width-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        <div class="progress__number">74%</div>
                                    </div>
                                    <!-- Progress: Pass Accuracy / End -->
                                </div>
                            </div>
                        </div>
                    </aside>
                    <!-- Widget: Featured Player / End --><!-- Widget: Game Result -->
                    <aside class="widget card widget--sidebar widget-game-result">
                        <div class="widget__title card__header card__header--has-btn">
                            <h4>Last Game Results</h4>
                            <a href="#" class="btn btn-default btn-outline btn-xs card-header__button">Expand Stats</a>
                        </div>
                        <div class="widget__content card__content">
                            <!-- Game Score -->
                            <div class="widget-game-result__section">
                                <div class="widget-game-result__section-inner">
                                    <header class="widget-game-result__header">
                                        <h3 class="widget-game-result__title">Championship Quarter Finals</h3>
                                        <time class="widget-game-result__date" datetime="2016-03-24">Saturday, March 24th, 2016</time>
                                    </header>
                                    <div class="widget-game-result__main">
                                        <!-- 1st Team -->
                                        <div class="widget-game-result__team widget-game-result__team--first">
                                            <figure class="widget-game-result__team-logo"><a href="#"><img src="assets/images/soccer/logos/alchemists_last_game_results_big.png" alt=""></a></figure>
                                            <div class="widget-game-result__team-info">
                                                <h5 class="widget-game-result__team-name">Alchemists</h5>
                                                <div class="widget-game-result__team-desc">Elric Bros School</div>
                                            </div>
                                        </div>
                                        <!-- 1st Team / End -->
                                        <div class="widget-game-result__score-wrap">
                                            <div class="widget-game-result__score">
                                                <span class="widget-game-result__score-result widget-game-result__score-result--winner">2</span>
                                                <span class="widget-game-result__score-dash">-</span>
                                                <span class="widget-game-result__score-result widget-game-result__score-result--loser">0</span>
                                            </div>
                                            <div class="widget-game-result__score-label">Final Score</div>
                                        </div>
                                        <!-- 2nd Team -->
                                        <div class="widget-game-result__team widget-game-result__team--second">
                                            <figure class="widget-game-result__team-logo"><a href="#"><img src="assets/images/samples/logo-l-clovers--sm.png" alt=""></a></figure>
                                            <div class="widget-game-result__team-info">
                                                <h5 class="widget-game-result__team-name">Clovers</h5>
                                                <div class="widget-game-result__team-desc">St Paddy's Institute</div>
                                            </div>
                                        </div>
                                        <!-- 2nd Team / End -->
                                    </div>
                                </div>
                            </div>
                            <!-- Game Score / End --><!-- Timeline -->
                            <div class="widget-game-result__section">
                                <div class="df-timeline-wrapper">
                                    <div class="df-timeline">
                                        <div class="df-timeline__event df-timeline__event--start">
                                            <div class="df-timeline__team-1">
                                                <div class="df-timeline__team-shirt"><i class="icon-svg icon-shirt"></i></div>
                                            </div>
                                            <div class="df-timeline__time">0’</div>
                                            <div class="df-timeline__team-2">
                                                <div class="df-timeline__team-shirt"><i class="icon-svg icon-shirt-alt"></i></div>
                                            </div>
                                        </div>
                                        <div class="df-timeline__event df-timeline__event--empty"></div>
                                        <div class="df-timeline__event">
                                            <div class="df-timeline__team-1">
                                                <div class="df-timeline__event-info">
                                                    <div class="df-timeline__event-name">F. Stevens</div>
                                                    <div class="df-timeline__event-desc">Alchemists 1-0</div>
                                                </div>
                                                <div class="df-timeline__event-icon"><i class="icon-svg icon-soccer-ball"></i></div>
                                            </div>
                                            <div class="df-timeline__time">22’</div>
                                        </div>
                                        <div class="df-timeline__event">
                                            <div class="df-timeline__time">36’</div>
                                            <div class="df-timeline__team-2">
                                                <div class="df-timeline__event-icon"><i class="icon-svg icon-yellow-card"></i></div>
                                                <div class="df-timeline__event-info">
                                                    <div class="df-timeline__event-name">Johnny Griffin</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="df-timeline__event df-timeline__event--empty"></div>
                                        <div class="df-timeline__event">
                                            <div class="df-timeline__time">HT</div>
                                            <div class="df-timeline__team-2">
                                                <div class="df-timeline__event-icon"><i class="icon-svg icon-substitution"></i></div>
                                                <div class="df-timeline__event-info">
                                                    <div class="df-timeline__event-name">Markus Jackson</div>
                                                    <div class="df-timeline__event-name">Rick Valentine</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="df-timeline__event">
                                            <div class="df-timeline__team-1">
                                                <div class="df-timeline__event-info">
                                                    <div class="df-timeline__event-name">Brian Kingster</div>
                                                </div>
                                                <div class="df-timeline__event-icon"><i class="icon-svg icon-red-card"></i></div>
                                            </div>
                                            <div class="df-timeline__time">59’</div>
                                        </div>
                                        <div class="df-timeline__event">
                                            <div class="df-timeline__team-1">
                                                <div class="df-timeline__event-info">
                                                    <div class="df-timeline__event-name">Christofer Grass (P)</div>
                                                    <div class="df-timeline__event-desc">Alchemists 2-0</div>
                                                </div>
                                                <div class="df-timeline__event-icon"><i class="icon-svg icon-soccer-ball-penalty"></i></div>
                                            </div>
                                            <div class="df-timeline__time">68’</div>
                                        </div>
                                        <div class="df-timeline__event df-timeline__event--empty"></div>
                                        <div class="df-timeline__event">
                                            <div class="df-timeline__time">84’</div>
                                            <div class="df-timeline__team-2">
                                                <div class="df-timeline__event-icon"><i class="icon-svg icon-yellow-card"></i></div>
                                                <div class="df-timeline__event-info">
                                                    <div class="df-timeline__event-name">Wally Christison</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Timeline / End --><!-- Game Statistics -->
                            <div class="widget-game-result__section">
                                <header class="widget-game-result__subheader card__subheader card__subheader--sm card__subheader--nomargins">
                                    <h5 class="widget-game-result__subtitle">Game Statistics</h5>
                                </header>
                                <div class="widget-game-result__section-inner">
                                    <!-- Progress: Shots on Goal -->
                                    <div class="progress-double-wrapper">
                                        <h6 class="progress-title">Shots on Goal</h6>
                                        <div class="progress-inner-holder">
                                            <div class="progress__digit progress__digit--left progress__digit--40">15</div>
                                            <div class="progress__double">
                                                <div class="progress">
                                                    <div class="progress__bar progress__bar-width-60" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress">
                                                    <div class="progress__bar progress__bar--success progress__bar-width-80" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                            <div class="progress__digit progress__digit--right progress__digit--highlight progress__digit--40">24</div>
                                        </div>
                                    </div>
                                    <!-- Progress: Shots on Goal / End --><!-- Progress: Ball Posession -->
                                    <div class="progress-double-wrapper">
                                        <h6 class="progress-title">Ball Posession</h6>
                                        <div class="progress-inner-holder">
                                            <div class="progress__digit progress__digit--left progress__digit--highlight progress__digit--40">75%</div>
                                            <div class="progress__double">
                                                <div class="progress">
                                                    <div class="progress__bar progress__bar-width-80" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress">
                                                    <div class="progress__bar progress__bar--success progress__bar-width-40" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                            <div class="progress__digit progress__digit--right progress__digit--40">35%</div>
                                        </div>
                                    </div>
                                    <!-- Progress: Ball Posession / End --><!-- Progress: Fouls -->
                                    <div class="progress-double-wrapper">
                                        <h6 class="progress-title">Fouls</h6>
                                        <div class="progress-inner-holder">
                                            <div class="progress__digit progress__digit--left progress__digit--40">5</div>
                                            <div class="progress__double">
                                                <div class="progress">
                                                    <div class="progress__bar progress__bar-width-30" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress">
                                                    <div class="progress__bar progress__bar--success progress__bar-width-60" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                            <div class="progress__digit progress__digit--right progress__digit--highlight progress__digit--40">8</div>
                                        </div>
                                    </div>
                                    <!-- Progress: Fouls / End --><!-- Progress: Corner Kicks -->
                                    <div class="progress-double-wrapper">
                                        <h6 class="progress-title">Corner Kicks</h6>
                                        <div class="progress-inner-holder">
                                            <div class="progress__digit progress__digit--left progress__digit--40">10</div>
                                            <div class="progress__double">
                                                <div class="progress">
                                                    <div class="progress__bar progress__bar-width-30" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress">
                                                    <div class="progress__bar progress__bar--success progress__bar-width-80" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                            <div class="progress__digit progress__digit--right progress__digit--highlight progress__digit--40">12</div>
                                        </div>
                                    </div>
                                    <!-- Progress: Corner Kicks / End -->
                                </div>
                            </div>
                            <!-- Game Statistics / End -->
                        </div>
                    </aside>
                    <!-- Widget: Game Result / End --><!-- Widget: Trending News -->
                    <aside class="widget widget--sidebar card widget-tabbed">
                        <div class="widget__title card__header">
                            <h4>Top Trending News</h4>
                        </div>
                        <div class="widget__content card__content">
                            <div class="widget-tabbed__tabs">
                                <!-- Widget Tabs -->
                                <ul class="nav nav-tabs nav-justified widget-tabbed__nav" role="tablist">
                                    <li class="nav-item"><a href="#widget-tabbed-sm-newest" class="nav-link active" aria-controls="widget-tabbed-sm-newest" role="tab" data-toggle="tab">Newest</a></li>
                                    <li class="nav-item"><a href="#widget-tabbed-sm-commented" class="nav-link" aria-controls="widget-tabbed-sm-commented" role="tab" data-toggle="tab">Most Commented</a></li>
                                    <li class="nav-item"><a href="#widget-tabbed-sm-popular" class="nav-link" aria-controls="widget-tabbed-sm-popular" role="tab" data-toggle="tab">Popular</a></li>
                                </ul>
                                <!-- Widget Tab panes -->
                                <div class="tab-content widget-tabbed__tab-content">
                                    <!-- Newest -->
                                    <div role="tabpanel" class="tab-pane fade show active" id="widget-tabbed-sm-newest">
                                        <ul class="posts posts--simple-list">
                                            <li class="posts__item posts__item--category-1">
                                                <div class="posts__inner">
                                                    <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                                    <h6 class="posts__title"><a href="#">Jake Dribbler Announced that he is retiring next month</a></h6>
                                                    <time datetime="2016-08-23" class="posts__date">August 23rd, 2018</time>
                                                    <div class="posts__excerpt">Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                                                </div>
                                            </li>
                                            <li class="posts__item posts__item--category-1">
                                                <div class="posts__inner">
                                                    <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                                    <h6 class="posts__title"><a href="#">The Alchemists news coach is bringin a new shooting guard</a></h6>
                                                    <time datetime="2016-08-23" class="posts__date">August 23rd, 2018</time>
                                                    <div class="posts__excerpt">Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                                                </div>
                                            </li>
                                            <li class="posts__item posts__item--category-1">
                                                <div class="posts__inner">
                                                    <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                                    <h6 class="posts__title"><a href="#">This Saturday starts the intensive training for the Final</a></h6>
                                                    <time datetime="2016-08-23" class="posts__date">August 23rd, 2018</time>
                                                    <div class="posts__excerpt">Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- Commented -->
                                    <div role="tabpanel" class="tab-pane fade" id="widget-tabbed-sm-commented">
                                        <ul class="posts posts--simple-list">
                                            <li class="posts__item posts__item--category-3">
                                                <div class="posts__inner">
                                                    <div class="posts__cat"><span class="label posts__cat-label">Playoffs</span></div>
                                                    <h6 class="posts__title"><a href="#">New York Islanders are now flying to California for the big game</a></h6>
                                                    <time datetime="2016-08-23" class="posts__date">August 23rd, 2018</time>
                                                    <div class="posts__excerpt">Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                                                </div>
                                            </li>
                                            <li class="posts__item posts__item--category-1">
                                                <div class="posts__inner">
                                                    <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                                    <h6 class="posts__title"><a href="#">The Female Division is growing strong after their third game</a></h6>
                                                    <time datetime="2016-08-23" class="posts__date">August 23rd, 2018</time>
                                                    <div class="posts__excerpt">Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                                                </div>
                                            </li>
                                            <li class="posts__item posts__item--category-1">
                                                <div class="posts__inner">
                                                    <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                                    <h6 class="posts__title"><a href="#">The Alchemists news coach is bringin a new shooting guard</a></h6>
                                                    <time datetime="2016-08-23" class="posts__date">August 23rd, 2018</time>
                                                    <div class="posts__excerpt">Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- Popular -->
                                    <div role="tabpanel" class="tab-pane fade" id="widget-tabbed-sm-popular">
                                        <ul class="posts posts--simple-list">
                                            <li class="posts__item posts__item--category-1">
                                                <div class="posts__inner">
                                                    <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                                    <h6 class="posts__title"><a href="#">The Alchemists news coach is bringin a new shooting guard</a></h6>
                                                    <time datetime="2016-08-23" class="posts__date">August 23rd, 2018</time>
                                                    <div class="posts__excerpt">Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                                                </div>
                                            </li>
                                            <li class="posts__item posts__item--category-1">
                                                <div class="posts__inner">
                                                    <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                                    <h6 class="posts__title"><a href="#">This Saturday starts the intensive training for the Final</a></h6>
                                                    <time datetime="2016-08-23" class="posts__date">August 23rd, 2018</time>
                                                    <div class="posts__excerpt">Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                                                </div>
                                            </li>
                                            <li class="posts__item posts__item--category-1">
                                                <div class="posts__inner">
                                                    <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                                    <h6 class="posts__title"><a href="#">Jake Dribbler Announced that he is retiring next month</a></h6>
                                                    <time datetime="2016-08-23" class="posts__date">August 23rd, 2018</time>
                                                    <div class="posts__excerpt">Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </aside>
                    <!-- Widget: Trending News / End --><!-- Widget: Match Announcement -->
                    <aside class="widget widget--sidebar card widget-preview">
                        <div class="widget__title card__header">
                            <h4>Next Match</h4>
                        </div>
                        <div class="widget__content card__content">
                            <!-- Match Preview -->
                            <div class="match-preview">
                                <section class="match-preview__body">
                                    <header class="match-preview__header">
                                        <time class="match-preview__date" datetime="2018-08-14">Friday August 14th</time>
                                        <h3 class="match-preview__title match-preview__title--lg">Quarter Finals</h3>
                                    </header>
                                    <div class="match-preview__content">
                                        <!-- 1st Team -->
                                        <div class="match-preview__team match-preview__team--first">
                                            <figure class="match-preview__team-logo"><img src="assets/images/soccer/logos/alchemists_buy_tickets.png" alt=""></figure>
                                            <h5 class="match-preview__team-name">Alchemists</h5>
                                            <div class="match-preview__team-info">Elric Bros School</div>
                                        </div>
                                        <!-- 1st Team / End -->
                                        <div class="match-preview__vs">
                                            <div class="match-preview__conj">VS</div>
                                            <div class="match-preview__match-info">
                                                <time class="match-preview__match-time" datetime="2017-08-12 09:00">9:00 PM</time>
                                                <div class="match-preview__match-place">Madison Cube Stadium</div>
                                            </div>
                                        </div>
                                        <!-- 2nd Team -->
                                        <div class="match-preview__team match-preview__team--second">
                                            <figure class="match-preview__team-logo"><img src="assets/images/soccer/logos/pirates_buy_tickets.png" alt=""></figure>
                                            <h5 class="match-preview__team-name">Pirates</h5>
                                            <div class="match-preview__team-info">Bebop Institute</div>
                                        </div>
                                        <!-- 2nd Team / End -->
                                    </div>
                                </section>
                                <div class="countdown__content">
                                    <div class="countdown-counter" data-date="June 18, 2020 21:00:00"></div>
                                </div>
                                <div class="match-preview__action match-preview__action--ticket"><a href="#" class="btn btn-primary-inverse btn-lg btn-block">Buy Tickets Now</a></div>
                            </div>
                            <!-- Match Preview / End -->
                        </div>
                    </aside>
                    <!-- Widget: Match Announcement / End -->
                </div>
                <!-- Sidebar / End -->
            </div>
        </div>
    </div>
    <!-- Content / End -->
    @include('theme-soccer.layouts.footer')
    <!-- Login/Register Tabs Modal -->
    <div class="modal fade" id="modal-login-register-tabs" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg modal--login modal--login-only" role="document">
            <div class="modal-content">
                <div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>
                <div class="modal-body">
                    <div class="modal-account-holder">
                        <div class="modal-account__item modal-account__item--logo">
                            <p class="modal-account__item-register-txt">Don’t have an account? <a href="#">Register Now</a> and enjoy all our benefits!</p>
                        </div>
                        <div class="modal-account__item">
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <!-- Tab: Login -->
                                <div role="tabpanel" class="tab-pane fade show active" id="tab-login">
                                    <!-- Login Form -->
                                    <form action="#" class="modal-form">
                                        <h5>Login to your account</h5>
                                        <div class="form-group"><input type="email" class="form-control" placeholder="Enter your email address..."></div>
                                        <div class="form-group"><input type="password" class="form-control" placeholder="Enter your password..."></div>
                                        <div class="form-group form-group--pass-reminder">
                                            <label class="checkbox checkbox-inline">
                                                <input type="checkbox" id="inlineCheckbox1" value="option1" checked="checked"> Remember Me <span class="checkbox-indicator"></span>
                                            </label>
                                            <a href="#">Forgot your password?</a>
                                        </div>
                                        <div class="form-group form-group--submit"><a href="_soccer_shop-account.html" class="btn btn-primary-inverse btn-block">Enter to your account</a></div>
                                        <div class="modal-form--social">
                                            <h6>or Login with your social profile:</h6>
                                            <ul class="social-links social-links--btn text-center">
                                                <li class="social-links__item">
                                                    <a href="#" class="social-links__link social-links__link--lg social-links__link--fb"><i class="fa fa-facebook"></i></a>
                                                </li>
                                                <li class="social-links__item">
                                                    <a href="#" class="social-links__link social-links__link--lg social-links__link--twitter"><i class="fa fa-twitter"></i></a>
                                                </li>
                                                <li class="social-links__item">
                                                    <a href="#" class="social-links__link social-links__link--lg social-links__link--gplus"><i class="fa fa-google-plus"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </form>
                                    <!-- Login Form / End -->
                                </div>
                                <!-- Tab: Login / End --><!-- Tab: Register -->
                                <div role="tabpanel" class="tab-pane fade" id="tab-register">
                                    <!-- Register Form -->
                                    <form action="#" class="modal-form">
                                        <h5>Register Now!</h5>
                                        <div class="form-group"><input type="email" class="form-control" placeholder="Enter your email address..."></div>
                                        <div class="form-group"><input type="password" class="form-control" placeholder="Enter your password..."></div>
                                        <div class="form-group"><input type="password" class="form-control" placeholder="Repeat your password..."></div>
                                        <div class="form-group form-group--submit"><a href="_soccer_shop-account.html" class="btn btn-success btn-block">Create Your Account</a></div>
                                        <div class="modal-form--note">You’ll receive a confirmation email in your inbox with a link to activate your account.</div>
                                    </form>
                                    <!-- Register Form / End -->
                                </div>
                                <!-- Tab: Register / End -->
                            </div>
                            <!-- Nav tabs -->
                            <div class="nav-tabs-login-wrapper">
                                <ul class="nav nav-tabs nav-justified nav-tabs--login" role="tablist">
                                    <li class="nav-item"><a class="nav-link active" href="#tab-login" role="tab" data-toggle="tab">Login</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#tab-register" role="tab" data-toggle="tab">Register</a></li>
                                </ul>
                            </div>
                            <!-- Nav tabs / End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Login/Register Tabs Modal / End -->
</div>
<!-- Javascript Files================================================== --><!-- Core JS -->
<script src="{{ asset('site/theme-soccer/assets/vendor/jquery/jquery.min.js') }}"></script>
<script src="{{ asset('site/theme-soccer/assets/vendor/jquery/jquery-migrate.min.js') }}"></script>
<script src="{{ asset('site/theme-soccer/assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
<script src="{{ asset('site/theme-soccer/assets/js/core.js') }}"></script>
<!-- Vendor JS -->
<script src="{{ asset('site/theme-soccer/assets/vendor/twitter/jquery.twitter.js') }}"></script>
<!-- Template JS -->
<script src="{{ asset('site/theme-soccer/assets/js/init.js') }}"></script>
<script src="{{ asset('site/theme-soccer/assets/js/custom.js') }}"></script>
</body>
</html>
