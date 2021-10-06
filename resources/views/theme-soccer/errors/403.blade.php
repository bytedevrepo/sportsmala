@extends('theme-soccer.layouts.app')

@section('content')
    <div class="site-content">
        <div class="container">
            <!-- Error 404 -->
            <div class="error-404">
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <figure class="error-404__figure">
                            <img src="{{ static_asset('site/theme-soccer/assets/images/icon-ghost.svg') }}" alt="">
                        </figure>
                        <header class="error__header">
                            <h2 class="error__title">{{ __('access_forbidden') }}</h2>
                            <h3 class="error__subtitle">{{ __('403_message') }}</h3>
                        </header>
                        <div class="error__description">
                            The page you are looking for has been moved or doesn’t exist anymore, if you like you can return to our homepage.
                        </div>
                        <footer class="error__cta">
                            <a href="{{ route('home') }}" class="btn btn-primary">{{ __('back_to_home') }}</a>
                        </footer>
                    </div>
                </div>
            </div>
            <!-- Error 404 / End -->
        </div>
    </div>

@endsection
