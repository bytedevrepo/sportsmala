<div class="add-new-page bg-white p-0 m-b-20">
    <nav>
        <div class="nav m-b-20 setting-tab" id="nav-tab" role="tablist">
            <a class="nav-item nav-link @yield('tournament-category')" id="general-settings" href="{{ route('tournament-category') }}" role="tab">Category</a>
            <a class="nav-item nav-link @yield('tournament-list')" id="contact-settings" href="{{ route('tournament-list') }}" role="tab">Tournaments</a>
            <a class="nav-item nav-link @yield('team-list')" id="seo-settings" href="{{ route('team-list') }}" role="tab">Teams</a>
            <a class="nav-item nav-link @yield('match-list')" id="mail-settings" href="{{ route('match-list') }}" role="tab">Matches</a>
        </div>
    </nav>
</div>
