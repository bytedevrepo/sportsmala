<nav class="df-account-navigation">
    <ul>
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
