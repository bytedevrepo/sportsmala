<?php

namespace App\Http\View\Composers;

use App\Services\MenuService;
use App\Services\WidgetService;
use Illuminate\View\View;

class SecondaryMenuComposer
{
    protected $menuService;

    public function __construct(MenuService $menuService)
    {
        $this->menuService = $menuService;
    }

    public function compose(View $view)
    {
    	$view->with('secondaryMenu', $this->menuService->secondaryMenu());
    }
}
