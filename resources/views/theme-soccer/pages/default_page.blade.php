@extends('theme-soccer.layouts.app')
@section('content')
    @if($page->template == 1)
        @include('theme-soccer.pages.dynamic-pages.style_1')
    @else
        @include('theme-soccer.pages.dynamic-pages.style_2')
    @endif
@stop
