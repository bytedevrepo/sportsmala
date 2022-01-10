<div class="card">
    <div class="card__header">
        <h4>Welcome Back!</h4>
    </div>
    <div class="card__content">
        <nav class="df-account-navigation">
            <ul>
                {{--<li class="df-account-navigation__link @yield('submit-news')">--}}
                    {{--<a href="{{ route('submit.news.form') }}">Create a Post</a>--}}
                {{--</li>--}}
                <li class="df-account-navigation__link @yield('my-profile-edit')">
                    <a href="{{ route('site.profile.form') }}">Personal Information</a>
                </li>
                <li class="df-account-navigation__link @yield('author-socials')">
                    <a href="{{ route('site.author.socials') }}">Social Network</a>
                </li>
                <li class="df-account-navigation__link @yield('author-preference')">
                    <a href="{{ route('site.author.preference') }}">Preference</a>
                </li>
                <li class="df-account-navigation__link @yield('author-password')">
                    <a href="{{ route('site.author.password') }}">Change Password</a>
                </li>
            </ul>
        </nav>
    </div>
</div>
