@php
    $rightWidgets = data_get($widgets, \Modules\Widget\Enums\WidgetLocation::RIGHT_SIDEBAR, []);
//dd($rightWidgets)
@endphp

@foreach($rightWidgets as $widget)
    @php
        //dd($widget);
        $viewFile = 'theme-soccer.widgets.'.$widget['view'];
    @endphp
    @if(view()->exists($viewFile))
        @include($viewFile, $widget)
    @endif
@endforeach
