@extends('theme-soccer.layouts.app')
@section('content')
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <h1 class="page-heading__title">Search <span class="highlight">Results</span></h1>
                    <ol class="page-heading__breadcrumb breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Search Results</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Content -->
    <div class="site-content">
        <div class="container">
            <div class="row">
                <!-- Content -->
                <div class="content col-lg-8">
                    <form action="{{ route('article.search') }}" id="search" method="GET">
                        <div class="row">
                            <div class="col-md-10">
                                <div class="form-group">
                                    <input name="search" type="text" value="{{ request()->get('search', '') }}" class="form-control" id="input-default" placeholder="{{ __('search')  }}" title="Press enter to search">
                                </div>
                            </div>
                            <div class="col-md-2">
                                <button style="height: 51px" type="submit" class="btn btn-default btn-lg btn-block">Search</button>
                            </div>
                        </div>

                    </form>

                    @if($totalPostCount)
                        <div class="alert alert-success">
                            <strong><span class="text-info">{{ $totalPostCount ?? 0 }}</span> Articles were found for your  "<span class="text-info">{{ $query }}</span>"  search in <span class="text-info">{{ $timeTaken }}</span> seconds</strong>
                        </div>
                    @endif

                    <ul class="posts posts--simple-list posts--simple-list--search">
                        @if(!blank($posts))
                            @foreach($posts as $post)
                                <li class="posts__item card posts__item--category-2">
                                    <div class="posts__inner card__content">
                                        @isset($post->category->category_name)
                                            <div class="posts__cat">
                                                <a href="{{ url('category',$post->category->slug) }}">
                                                    <span class="label posts__cat-label">{{ $post->category->category_name }}</span>
                                                </a>
                                            </div>
                                        @endisset
                                        <h6 class="posts__title">
                                            <a href="{{ route('article.detail', ['id' => $post->slug]) }}">
                                                {{ $post->title ?? '' }}
                                            </a>
                                        </h6>
                                        <time datetime="{{ $post->updated_at }}" class="posts__date">
                                            <a href="{{route('article.date', date('Y-m-d', strtotime($post->updated_at)))}}">
                                                {{ $post->updated_at->format('F j, Y') }}
                                            </a>
                                        </time>
                                        <div class="posts__excerpt">
                                            {!! \Illuminate\Support\Str::limit(strip_tags($post->content), 255) !!}
                                        </div>
                                    </div>
                                </li>
                            @endforeach
                        @endif
                    </ul>
                </div>
                <!-- Content / End --><!-- Sidebar -->
                <div id="sidebar" class="sidebar col-lg-4">
                    <div class="theiaStickySidebar">
                        @include('theme-soccer._partials.right_sidebar_widgets')
                    </div>
                </div>
                <!-- Sidebar / End -->
            </div>
        </div>
    </div>
@stop
