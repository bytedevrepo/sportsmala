<?php

namespace App\Providers;

use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use Modules\Common;

class ViewServiceProvider extends ServiceProvider
{
    public function register()
    {
        //
    }

    public function boot()
    {
        View::composer(
            ['theme-soccer._partials.right_sidebar_widgets', 'theme-soccer.pages.default_page'],
            'App\Http\View\Composers\WidgetComposer'
        );

        View::composer(
            ['theme-soccer._partials.footer_widgets', 'theme-soccer.layouts.footer'],
            'App\Http\View\Composers\FooterWidgetComposer'
        );

        View::composer(
            ['theme-soccer.layouts.header', 'theme-soccer.layouts.app'],
            'App\Http\View\Composers\HeaderWidgetComposer'
        );

        // View::composer(
        //     ['site.layouts.header'],
        //     'App\Http\View\Composers\MenuComposer'
        // );

        View::composer(
            ['site.partials.home.category_section', 'site.pages.home', 'site.widgets.ad_widget', 'site.layouts.header'],
            'App\Http\View\Composers\AdComposer'
        );

        View::composer(['theme-soccer.layouts.header','site.layouts.header'], 'App\Http\View\Composers\PrimaryMenuComposer');
        View::composer(['theme-soccer.layouts.header','site.layouts.header'], 'App\Http\View\Composers\SecondaryMenuComposer');

        View::composer(
            ['theme-soccer.layouts.header', 'theme-soccer.layouts.footer', 'theme-soccer._partials.right_sidebar_widgets','theme-soccer.layouts.header', 'theme-soccer.pages.default_page'],
            'App\Http\View\Composers\SocialComposer'
        );

        View::composer(['theme-soccer.layouts.header'], 'App\Http\View\Composers\LastpostComposer');

        View::composer(
            ['theme-soccer.layouts.header', 'common::layouts.header', 'site.layouts.header'],
            'App\Http\View\Composers\ActiveLangComposer'
        );

        View::composer(['theme-soccer._partials.home.breaking_section'], 'App\Http\View\Composers\BreakingComposer');

        View::composer(
            ['theme-soccer.layouts.app', 'theme-soccer._partials.home.primary_section', 'site.layouts.app'],
            'App\Http\View\Composers\LanguageComposer'
        );

    }
}
