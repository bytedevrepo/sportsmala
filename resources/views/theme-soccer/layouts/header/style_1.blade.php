<!-- Header Mobile -->
<div class="header-mobile clearfix" id="header-mobile">
    <div class="header-mobile__logo"><a href="/">
            <img src="{{ static_asset(settingHelper('logo')) }}" srcset="{{ static_asset(settingHelper('logo')) }}" alt="Alchemists" class="header-mobile__logo-img">
        </a>
    </div>
    <div class="header-mobile__inner">
        <a id="header-mobile__toggle" class="burger-menu-icon"><span class="burger-menu-icon__line"></span>
        </a>
        <span class="header-mobile__search-icon" id="header-mobile__search-icon"></span>
    </div>
</div>
<header class="header header--layout-1">
    <!-- Header Top Bar -->
    <div class="header__top-bar clearfix">
        <div class="container">
            <div class="header__top-bar-inner">
                <ul class="social-links social-links--inline social-links--main-nav">
                    @foreach($socialMedias as $socialMedia)
                        <li class="social-links__item">
                            <a href="{{$socialMedia->url}}" class="social-links__link" data-toggle="tooltip" data-placement="bottom" title="{{ $socialMedia->name }}"><i class="{{$socialMedia->icon}}"></i></a>
                        </li>
                    @endforeach
                    <li class="social-links__item">
                        <a href="{{ url('feed') }}" class="social-links__link" data-toggle="tooltip" data-placement="bottom" title="rss"><i class="fa fa-rss"></i></a>
                    </li>
                </ul>
                <div class="header-search-form">
                    <form id="search_bar_ext"  action="{{ route('article.search') }}" method="GET">
                        <input type="search" name="search" placeholder="{{ __('search') }}" class="search_bar_input">
                    </form>
                </div>
                <!-- Social Links / End -->
                <!-- Account Navigation -->
                <ul class="nav-account">
                    <li class="nav-account__item">
                        <a href="#">{{date('l, d F Y')}}</a>
                    </li>
                    <li class="nav-account__item">
                        <a href="#">Language: <span class="highlight">{{LaravelLocalization::setLocale() ? LaravelLocalization::setLocale() : 'EN'}}</span></a>
                        <ul class="main-nav__sub">
                            @foreach ($activeLang as $lang)
                                <li><a  href="{{ route('switch-langauge', $lang->code) }}">{{ $lang->name }}</a></li>
                            @endforeach
                        </ul>
                    </li>
                    @if(Cartalyst\Sentinel\Laravel\Facades\Sentinel::check())
                        <li class="nav-account__item">
                            <a href="{{ route('site.profile') }}" >{{ __('header.your_account') }}</a>
                        </li>
                        <li class="nav-account__item nav-account__item--logout">
                            <a href="{{ route('site.logout') }}">{{ __('header.logout') }}</a>
                        </li>
                    @else
                        <li class="nav-account__item nav-account__item--logout">
                            <a href="{{ route('site.login.form') }}">{{ __('header.login') }}</a>
                        </li>
                        <li class="nav-account__item nav-account__item--logout">
                            <a href="{{ route('site.register.form') }}">{{ __('header.register') }}</a>
                        </li>
                    @endif
                </ul>
                <!-- Social Links -->
                <!-- Account Navigation / End -->
            </div>
        </div>
    </div>

    <!-- Header Top Bar / End -->
    <!-- Header Secondary -->
    @if(Route::has('tournament-list') AND settingHelper('tournament_story_visibility') == 1)
        <div class="header__secondary story-result" style="height: 108px;">
            <div class="container-fluid p-1" >
                @include('tournament::score-card')
            </div>
        </div>
@endif

<!-- Header Secondary / End -->
    <!-- Header Primary -->
    <div class="header__primary">
        <div class="container">
            <div class="header__primary-inner">
                <!-- Header Logo -->
                <div class="header-logo">
                    <a href="{{ route('home') }}">
                        <img style="" src="{{ static_asset(settingHelper('logo')) }}" srcset="{{ static_asset(settingHelper('logo')) }}" alt="Logo" class="header-logo__img">
                    </a>
                </div>
                <!-- Header Logo / End -->
                <!-- Main Navigation -->
                <nav class="main-nav clearfix">
                    <div class="skew-bg">
                        <ul class="main-nav__list">
                            @foreach($primaryMenu as $mainMenu)
                                @if($mainMenu->is_mega_menu == 'no')
                                    <li class="">
                                        <a href="{{menuUrl($mainMenu)}}" target="{{$mainMenu->new_teb == 1? '_blank':''}}">{{$mainMenu->label == 'gallery'? __('gallery'):$mainMenu->label}}</a>
                                        @if(!blank($mainMenu->children))
                                            <ul class="main-nav__sub">
                                                @foreach($mainMenu->children as $child)
                                                    <li class="">
                                                        <a href="{{menuUrl($child)}}" target="{{$child->new_teb == 1? '_blank':''}}">{{$child->label == 'gallery'? __('gallery'):$child->label}}</a>
                                                        @if(!blank($child->children))
                                                            <ul class="main-nav__sub-2">
                                                                @foreach($child->children as $subChild)
                                                                    <li>
                                                                        <a href="{{menuUrl($subChild)}}" target="{{$subChild->new_teb == 1? '_blank':''}}">{{$subChild->label == 'gallery'? __('gallery'):$subChild->label}}</a>
                                                                    </li>
                                                                @endforeach
                                                            </ul>
                                                        @endif
                                                    </li>
                                                @endforeach
                                            </ul>
                                        @endif
                                    </li>
                                @endif
                                @if($mainMenu->is_mega_menu == 'category')
                                    <li class="">
                                        <a href="{{menuUrl($mainMenu)}}" target="{{$mainMenu->new_teb == 1 ? '_blank':''}}">{{$mainMenu->label == 'gallery'? __('gallery'):$mainMenu->label}}</a>
                                        <div class="main-nav__megamenu clearfix">
                                            @foreach($mainMenu->children as $child)
                                                <ul class="col-lg-4 col-md-4 col-12 main-nav__ul">
                                                    <li class="main-nav__title">{{$child->label == 'gallery'? __('gallery'):$child->label}}</li>
                                                    @foreach($child->children as $subChild)
                                                        <li>
                                                            <a href="{{menuUrl($subChild)}}" target="{{$subChild->new_teb == 1? '_blank':''}}">{{$subChild->label == 'gallery'? __('gallery'):$subChild->label}}</a>
                                                        </li>
                                                    @endforeach
                                                </ul>
                                            @endforeach
                                        </div>
                                    </li>
                                @endif
                                @if($mainMenu->is_mega_menu == 'tab')
                                    <li class="">
                                        <a href="{{menuUrl($mainMenu)}}">{{$mainMenu->label == 'gallery'? __('gallery'):$mainMenu->label}}</a>
                                        <div class="main-nav__megamenu clearfix">
                                            <ul class="col-lg-3 col-md-4 col-12 main-nav__ul">
                                                <li class="main-nav__title">Features</li>
                                                <li><a href="_soccer_features-shortcodes.html">Shortcodes</a></li>
                                                <li><a href="_soccer_features-typography.html">Typography</a></li>
                                                <li><a href="_soccer_features-widgets-blog.html">Widgets - Blog</a></li>
                                                <li><a href="_soccer_features-widgets-shop.html">Widgets - Shop</a></li>
                                                <li><a href="_soccer_features-widgets-sports.html">Widgets - Sports</a></li>
                                                <li><a href="_soccer_features-404.html">404 Error Page</a></li>
                                                <li><a href="_soccer_features-search-results.html">Search Results</a></li>
                                                <li><a href="_soccer_page-contacts.html">Contact Us</a></li>
                                            </ul>


                                            <div class="col-lg-9 col-md-8 col-12">
                                                <ul class="posts posts--simple-list">
                                                    <li class="posts__item posts__item--category-1">
                                                        <figure class="posts__thumb">
                                                            <a href="#">
                                                                <img src="/site/theme-soccer/assets/images/samples/post-img3-xs.jpg" alt="">
                                                            </a>
                                                        </figure>
                                                        <div class="posts__inner">
                                                            <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                                            <h6 class="posts__title"><a href="#">The new eco friendly stadium won a Leafy Award in 2016</a></h6>
                                                            <time datetime="2016-08-21" class="posts__date">August 21st, 2016</time>
                                                        </div>
                                                    </li>
                                                    <li class="posts__item posts__item--category-2">
                                                        <figure class="posts__thumb">
                                                            <a href="#">
                                                                <img src="/site/theme-soccer/assets/images/samples/post-img1-xs.jpg" alt="">
                                                            </a>
                                                        </figure>
                                                        <div class="posts__inner">
                                                            <div class="posts__cat"><span class="label posts__cat-label">Injuries</span></div>
                                                            <h6 class="posts__title"><a href="#">Mark Johnson has a Tibia Fracture and is gonna be out</a></h6>
                                                            <time datetime="2016-08-23" class="posts__date">August 23rd, 2016</time>
                                                        </div>
                                                    </li>
                                                    <li class="posts__item posts__item--category-1">
                                                        <figure class="posts__thumb">
                                                            <a href="#">
                                                                <img src="/site/theme-soccer/assets/images/samples/post-img4-xs.jpg" alt="">
                                                            </a>
                                                        </figure>
                                                        <div class="posts__inner">
                                                            <div class="posts__cat"><span class="label posts__cat-label">The Team</span></div>
                                                            <h6 class="posts__title"><a href="#">The team is starting a new power breakfast regimen</a></h6>
                                                            <time datetime="2016-08-21" class="posts__date">August 21st, 2016</time>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                @endif
                            @endforeach
                        </ul>
                    </div>
                {{--<a href="#" class="pushy-panel__toggle"><span class="pushy-panel__line"></span> </a>--}}
                <!-- Pushy Panel Toggle / Eng -->
                    {{--<div class="slan-comp"></div>--}}
                    @if(isset($secondaryMenu) AND !blank($secondaryMenu))
                        <div class="white-nav-bar">
                            <ul>
                                @foreach($secondaryMenu as $sMenu)
                                    @if($sMenu->is_mega_menu == 'no')
                                        <li class="main-nav__list">
                                            <a href="{{menuUrl($sMenu)}}" target="{{$sMenu->new_teb == 1? '_blank':''}}">
                                                {{$sMenu->label == 'gallery'? __('gallery'):$sMenu->label}}
                                            </a>
                                        </li>
                                    @endif
                                @endforeach
                            </ul>
                        </div>
                    @endif
                </nav>
                <!-- Main Navigation / End -->
            </div>
        </div>
    </div>
    <!-- Header Primary / End -->
</header>
