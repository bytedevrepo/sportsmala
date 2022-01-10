<div class="navbar bg-white breadcrumb-bar border-bottom">
    <nav>
        <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
            <a class="nav-item nav-link @yield('match-list')" href="{{ route('match-list') }}">Matches</a>
            <a class="nav-item nav-link @yield('team-list')" href="{{ route('team-list') }}">Teams</a>
            <a class="nav-item nav-link @yield('tournament-list')" href="{{ route('tournament-list') }}">Tournaments</a>
            <a class="nav-item nav-link @yield('tournament-category')" href="{{ route('tournament-category') }}">Category</a>
            <a class="nav-item nav-link @yield('tournament-setting')" href="{{ route('tournament-setting') }}"><i class="fa fa-cog mr-2"></i>Settings</a>
        </div>
    </nav>
</div>
