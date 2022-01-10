@if(!blank($section))
    @php $viewFile = 'theme-soccer._partials.home.breaking_news.'.$section->section_style ?? 'style_1'; @endphp
    @if(view()->exists($viewFile))
        @include($viewFile)
    @endif
@endif
