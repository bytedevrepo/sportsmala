<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>{{settingHelper('seo_title')}}</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    @include('theme-soccer._partials.seo_og')
    <meta name="csrf-token" content="{{ csrf_token() }}" />
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
    <link href="{{ static_asset('site/theme-soccer/assets/vendor/bootstrap/css/bootstrap.css') }}" rel="stylesheet">
    <link href="{{ static_asset('site/theme-soccer/assets/fonts/font-awesome/css/all.min.css') }}" rel="stylesheet">
    <link href="{{ static_asset('site/theme-soccer/assets/fonts/font-awesome/css/v4-shims.min.css') }}" rel="stylesheet">
    <link href="{{ static_asset('site/theme-soccer/assets/fonts/simple-line-icons/css/simple-line-icons.css') }}" rel="stylesheet">
    <link href="{{ static_asset('site/theme-soccer/assets/vendor/magnific-popup/dist/magnific-popup.css') }}" rel="stylesheet">
    <link href="{{ static_asset('site/theme-soccer/assets/vendor/slick/slick.css') }}" rel="stylesheet">
    <!-- Template CSS-->
    <link href="{{ static_asset('site/theme-soccer/assets/css/style-soccer.css') }}" rel="stylesheet">
    @if(Route::has('tournament-list'))
        <link href="{{ static_asset('site/theme-soccer/assets/css/score.css') }}" rel="stylesheet">
    @endif
    @if(settingHelper('predefined_header')!=null)
        {!! base64_decode(settingHelper('predefined_header')) !!}
    @endif
    @if(settingHelper('custom_header_style')!=null)
        {!! base64_decode(settingHelper('custom_header_style')) !!}
    @endif

    @include('feed::links')
    @stack('style')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.css"  />
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
                    <a href="/">
                        <img src="{{ static_asset(settingHelper('logo')) }}" srcset="{{ static_asset(settingHelper('logo')) }}" alt="">
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
                        </div>
                    </div>
                </aside>
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
<script src="{{ static_asset('site/theme-soccer/assets/vendor/jquery/jquery.min.js') }}"></script>
<script src="{{ static_asset('site/theme-soccer/assets/vendor/jquery/jquery-migrate.min.js') }}"></script>
<script src="{{ static_asset('site/theme-soccer/assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
<script src="{{ static_asset('site/theme-soccer/assets/js/core.js') }}"></script>
<!-- Vendor JS -->
<script src="{{ static_asset('site/theme-soccer/assets/vendor/twitter/jquery.twitter.js') }}"></script>
<!-- Template JS -->
<script src="{{ static_asset('site/theme-soccer/assets/js/init.js') }}"></script>
<script src="{{ static_asset('site/theme-soccer/assets/js/custom.js') }}"></script>
<script src="{{static_asset('site/theme-soccer/assets/js/theia-sticky-sidebar.min.js') }}"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        jQuery('.content, .sidebar').theiaStickySidebar({
            additionalMarginTop: 0
        });
    });
</script>
@if(Route::has('tournament-list'))
    <script defer>
        let loading=true;
        $(document).ready(function() {
            
            getCategory();

            $("#tournamentSelect").on('change', function () {
                var category_id = $("#tournamentSelect option:selected").val();
                getScore(category_id);
            })

            $("#gameDateSelect").on('change', function () {
                var date = $(this).val();
                var category_id = $("#tournamentSelect option:selected").val();
                getScore(category_id,date);
            })
        });

        function getScore(category_id='', date='') {
            let id;
            if (category_id){
                id = category_id;
            } else{
                id = $("#tournamentSelect option:selected").val();
            }
            var scoreUrl = "{{ route('tournament-score-ajax') }}";
            $.ajax({
                type: 'POST',
                url: scoreUrl,
                dataType: "json",
                data: {'category_id': id, 'date': date, _token:"{{ csrf_token() }}"},
                async:false,
                success: function(response) {
                    if ((response.gameDates !== '')) {
                        var gameDateSelect = $('#gameDateSelect');
                        gameDateSelect.empty();
                        var game_dates = response.gameDates;
                        if (game_dates.length){
                            for(i=0;i<game_dates.length;i++){
                                $('<option/>')
                                    .val(game_dates[i].date)
                                    .text(game_dates[i].date_human)
                                    .appendTo('#gameDateSelect')
                            }
                        }
                        gameDateSelect.val(response.selectedDate);
                    }

                    var match = response.match;
                    // $('.scoreCard').remove();
                    $('.owl-wrapper-outer').remove();
                   
                        for (i=0; i<match.length; i++) {
                        var team1_name = match[i].team1.team_name;
                        var team2_name = match[i].team2.team_name;

                        $("#socreCardRow").append(
                            `<div class=" col-md-3 p-0  scoreCard">
                                <div class="card h-100 rounded ">
                                    <div class="card-body">
                                        <table class="scoreBoard">
                                            <tr>
                                                <th>${match[i].tournament.tournament_name} - ${match[i].game_status} </th>
                                                <th>Result</th>
                                                </tr>
                                                <tr>
                                                    <td class="float-left"> <img class="mr-2" src="${match[i].team1.logo}" alt="" style="width: 15px;border-radius: 50%;">
                                                        ${team1_name}</td>
                                                        <td>${match[i].team1_score}</td>
                                        </tr>
                                        <tr>
                                            <td class="float-left"><img class="mr-2" src="${match[i].team2.logo}" alt="" style="width: 15px;border-radius: 50%;">
                                                ${team2_name}</td>
                                            <td>${match[i].team2_score}</td>
                                            </tr>
                                            </table>
                                            
                                     </div>
                                </div>
                            </div>`
                            )
                    
                        }
                        // get owl element
                        var owl = $('.owl-carousel');

                        // get owl instance from element
                        var owlInstance = owl.data('owlCarousel');

                        // if instance is existing
                        if(owlInstance != null)
                            owlInstance.reinit();
                }
            });
        }
        function getCategory() {
            var categoryUrl = "{{ route('tournament-category-ajax') }}";
            $.ajax({
                type: 'GET',
                url: categoryUrl,
                dataType: "json",
                async:false,
                success: function(response) {
                    getScore(response[0].id);
                    for (i=0; i<response.length; i++) {
                        $('<option/>')
                            .val(response[i].id)
                            .text(response[i].category_name)
                            .appendTo('#tournamentSelect')
                    }
                }
            });
        }
    </script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.js"></script>
<script>
    $(document).ready(function () {
        var carousel = $("#socreCardRow");
        carousel.owlCarousel({
        items:4,
        navigation:true,
        navigationText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
    });  
    });
</script>
@endif
@yield('script')
@yield('player')
@yield('audio')
</body>
</html>
