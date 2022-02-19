<!-- Footer  ================================================== -->
<footer id="footer" class="footer">
    <!-- Footer Widgets -->
    <div class="footer-widgets">
        <div class="footer-widgets__inner">
            <div class="container">
                <div class="row">
                    @foreach($footerWidgets as $widget)
                        @if($widget['view'] == 'popular_post')
                            @include('theme-soccer.widgets.footer.popular_post', $widget)
                        @elseif($widget['view'] == 'editor_picks')
                            @include('theme-soccer.widgets.footer.editor_picks', $widget)
                        @elseif($widget['view'] == 'categories')
                            @include('theme-soccer.widgets.footer.categories', $widget)
                        @elseif($widget['view'] == 'newsletter')
                            @include('theme-soccer.widgets.footer.newsletter', $widget)
                        @elseif($widget['view'] == 'follow_us')
                            @include('theme-soccer.widgets.footer.follow_us', $widget)
                        @elseif($widget['view'] == 'contact_details')
                            @include('theme-soccer.widgets.footer.contact', $widget)
                        @endif
                    @endforeach
                    <div class="clearfix visible-sm"></div>
                </div>
            </div>
        </div>
        <!-- Sponsors -->
        {{--<div class="container">--}}
            {{--<div class="sponsors">--}}
                {{--<h6 class="sponsors-title">Our Sponsors:</h6>--}}
                {{--<ul class="sponsors-logos">--}}
                    {{--<li class="sponsors__item"><a href="#" target="_blank"><img src="assets/images/soccer/sponsor-visa.png" alt=""></a></li>--}}
                    {{--<li class="sponsors__item"><a href="#" target="_blank"><img src="assets/images/soccer/sponsor-discover.png" alt=""></a></li>--}}
                    {{--<li class="sponsors__item"><a href="#" target="_blank"><img src="assets/images/soccer/sponsor-paypal.png" alt=""></a></li>--}}
                    {{--<li class="sponsors__item"><a href="#" target="_blank"><img src="assets/images/soccer/sponsor-skrill.png" alt=""></a></li>--}}
                    {{--<li class="sponsors__item"><a href="#" target="_blank"><img src="assets/images/soccer/sponsor-westernunion.png" alt=""></a></li>--}}
                    {{--<li class="sponsors__item"><a href="#" target="_blank"><img src="assets/images/soccer/sponsor-payoneer.png" alt=""></a></li>--}}
                {{--</ul>--}}
            {{--</div>--}}
        {{--</div>--}}
        <!-- Sponsors / End -->
    </div>
    <!-- Footer Widgets / End --><!-- Footer Secondary -->
    <div class="footer-secondary">
        <div class="container">
            <div class="footer-secondary__inner">
                <div class="row">
                    <div class="col-md-6">
                        <div class="footer-copyright"><a href="#">{{settingHelper('copyright_text')}}</a></div>
                    </div>
                    <div class="col-md-6">
                        {{--<ul class="footer-nav footer-nav--right footer-nav--condensed footer-nav--sm">--}}
                            {{--<li class="footer-nav__item"><a href="{{ url('/') }}">Home</a></li>--}}
                            {{--<li class="footer-nav__item"><a href="/">Features</a></li>--}}
                            {{--<li class="footer-nav__item"><a href="/">Statistics</a></li>--}}
                            {{--<li class="footer-nav__item"><a href="/">The Team</a></li>--}}
                            {{--<li class="footer-nav__item"><a href="/">News</a></li>--}}
                            {{--<li class="footer-nav__item"><a href="/">Shop</a></li>--}}
                        {{--</ul>--}}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer Secondary / End -->
</footer>
<!-- Footer / End -->
