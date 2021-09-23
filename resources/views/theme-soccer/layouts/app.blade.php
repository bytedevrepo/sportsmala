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
    <!-- Header -->
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
    <!-- Pushy Panel - Dark / End -->
    @yield('content')

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
<script src="{{asset('site/theme-soccer/assets/js/theia-sticky-sidebar.min.js') }}"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        jQuery('.content, .sidebar').theiaStickySidebar({
            additionalMarginTop: 0
        });
    });
</script>
</body>
</html>
