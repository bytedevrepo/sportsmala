@extends('theme-soccer.layouts.app')
@section('my-profile')
    active
@endsection
@section('content')
    <!-- Page Heading -->
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <h1 class="page-heading__title">My <span class="highlight">Profile</span></h1>
                    <ol class="page-heading__breadcrumb breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Account</a></li>
                        <li class="breadcrumb-item active" aria-current="page">My Profile</li>
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
                    <!-- Staff Member -->
                    <div class="card card--clean alc-staff">
                        <div class="card__header card__header--has-btn">
                            <h4>My Profile</h4>
                            <a class="btn btn-default btn-outline btn-xs card-header__button" href="{{ route('site.profile.form') }}" title="Update Profile">
                                Update profile
                            </a>
                        </div>
                        <div class="card__content">
                            <div class="card mb-0">
                                <div class="card__content">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="alc-staff__photo">
                                                @if(Sentinel::getUser()->profile_image != null)
                                                    <img src="{{static_asset(Sentinel::getUser()->profile_image)}}">
                                                @else
                                                    <img src="{{static_asset('default-image/user.jpg') }}">
                                                @endif
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="alc-staff-inner">
                                                <header class="alc-staff__header">
                                                    <h1 class="alc-staff__header-name">
                                                        {{ Sentinel::getUser() ? Sentinel::getUser()->first_name : '' }}
                                                        <span class="alc-staff__header-last-name">{{ Sentinel::getUser() ? Sentinel::getUser()->last_name : '' }}</span>
                                                    </h1>
                                                    <span class="alc-staff__header-role">{{ Sentinel::getUser() ? Sentinel::getUser()->email : '' }}</span>
                                                </header>
                                                <!-- Excerpt -->
                                                <div class="alc-staff-excerpt">
                                                    {{ Sentinel::getUser()->about_us }}
                                                </div>
                                                <!-- Details -->
                                                <dl class="alc-staff-details">
                                                    <dt class="alc-staff-details__label">First Name:</dt>
                                                    <dd class="alc-staff-details__value">{{ Sentinel::getUser() ? Sentinel::getUser()->first_name : '' }}</dd>
                                                    <dt class="alc-staff-details__label">Last Name:</dt>
                                                    <dd class="alc-staff-details__value">{{ Sentinel::getUser() ? Sentinel::getUser()->last_name : '' }}</dd>
                                                    <dt class="alc-staff-details__label">Email:</dt>
                                                    <dd class="alc-staff-details__value">{{ Sentinel::getUser() ? Sentinel::getUser()->email : '' }}</dd>
                                                    <dt class="alc-staff-details__label">Account Status:</dt>
                                                    <dd class="alc-staff-details__value">{{ (Sentinel::getUser() && Sentinel::getUser()->is_active) ? 'ACTIVE' : 'DISABLED' }}</dd>
                                                    <dt class="alc-staff-details__label">Last Login:</dt>
                                                    <dd class="alc-staff-details__value">{{ Sentinel::getUser()->last_login }}</dd>
                                                </dl>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- User Posts -->
                    <div class="card card--clean">
                        <header class="card__header card__header--has-btn">
                            <h4>My Posts</h4>
                            {{--<a href="blog-1.html" class="btn btn-default btn-outline btn-xs card-header__button">See All Related News</a>--}}
                        </header>
                        <div class="card__content">
                            <!-- Posts Grid -->
                            <div class="posts posts--cards post-grid post-grid--2cols post-grid--fitRows row">
                                @foreach($articles as $post)
                                    <div class="post-grid__item col-6">
                                        <div class="posts__item posts__item--card posts__item--category-1 card">
                                            <figure class="posts__thumb">
                                                <div class="posts__cat">
                                                    <a href="{{ url('category',$post->category->slug) }}">
                                                        <span class="label posts__cat-label">{{ $post->category->category_name }}</span>
                                                    </a>
                                                </div>
                                                <a href="#">
                                                    @if(isFileExist($post->image, $result = @$post->image->medium_image))
                                                        <img src="{{basePath($post->image)}}/{{ $result }}" alt="{!! $post->title !!}">
                                                    @else
                                                        <img src="{{static_asset('default-image/default-358x215.png') }}" alt="{!! $post->title !!}">
                                                    @endif
                                                </a>
                                            </figure>
                                            <div class="posts__inner card__content">
                                                <a href="{{ url('category',$post->category->slug) }}" class="posts__cta"></a>
                                                <time datetime="2016-08-23" class="posts__date">
                                                    <a href="{{route('article.date', date('Y-m-d', strtotime($post->updated_at)))}}">
                                                        {{ $post->updated_at->format('F j, Y') }}
                                                    </a>
                                                </time>
                                                <h6 class="posts__title">
                                                    <a href="{{ route('article.detail', ['id' => @$post->slug]) }}">
                                                        {{ \Illuminate\Support\Str::limit($post->title, 60) }}
                                                    </a>
                                                </h6>
                                                <div class="posts__excerpt">
                                                    {{ \Illuminate\Support\Str::limit(strip_tags($post->content), 150) }}
                                                </div>
                                            </div>
                                            <footer class="posts__footer card__footer">
                                                <div class="post-author">
                                                    {{--<figure class="post-author__avatar">--}}
                                                    {{--<img src="assets/images/samples/avatar-1.jpg" alt="Post Author Avatar">--}}
                                                    {{--</figure>--}}
                                                    <div class="post-author__info">
                                                        <h4 class="post-author__name">
                                                            <a href="{{ route('site.author',['id' => $post->user->id]) }}">
                                                                {{ data_get($post, 'user.first_name') }}
                                                            </a>
                                                        </h4>
                                                    </div>
                                                </div>
                                                <ul class="post__meta meta">
                                                    <li class="meta__item meta__item--views">{{ $post->total_hit }}</li>
                                                </ul>
                                            </footer>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Sidebar -->
                <div class="sidebar col-lg-4">
                    <!-- Widget: Social Buttons -->
                    @if(!blank(Sentinel::getUser()->social_media))
                        <aside class="widget widget--sidebar widget-social">
                            @if(@Sentinel::getUser()->social_media['facebook_url'] != null)
                                <a href="{{ @Sentinel::getUser()->social_media['facebook_url'] }}" class="btn-social-counter btn-social-counter--fb" target="_blank">
                                    <div class="btn-social-counter__icon"><i class="fa fa-facebook"></i></div>
                                    <h6 class="btn-social-counter__title">{{ data_get($post, 'user.first_name') }}'s Facebook Page</h6>
                                    <span class="btn-social-counter__add-icon"></span>
                                </a>
                            @endif
                            @if(@Sentinel::getUser()->social_media['twitter_url'] != null)
                                <a href="{{ @Sentinel::getUser()->social_media['twitter_url'] }}" class="btn-social-counter btn-social-counter--twitter" target="_blank">
                                    <div class="btn-social-counter__icon"><i class="fa fa-twitter"></i></div>
                                    <h6 class="btn-social-counter__title">{{ data_get($post, 'user.first_name') }}'s Twitter Account</h6>
                                    <span class="btn-social-counter__add-icon"></span>
                                </a>
                            @endif
                            @if(@Sentinel::getUser()->social_media['instagram_url'] != null)
                                <a href="{{ @Sentinel::getUser()->social_media['instagram_url'] }}" class="btn-social-counter btn-social-counter--instagram" target="_blank">
                                    <div class="btn-social-counter__icon"><i class="fa fa-instagram"></i></div>
                                    <h6 class="btn-social-counter__title">{{ data_get($post, 'user.first_name') }}'s Instagram Account</h6>
                                    <span class="btn-social-counter__add-icon"></span>
                                </a>
                            @endif
                            @if(@Sentinel::getUser()->social_media['youtube_url'] != null)
                                <a href="{{ @Sentinel::getUser()->social_media['youtube_url'] }}" class="btn-social-counter btn-social-counter--youtube" target="_blank">
                                    <div class="btn-social-counter__icon"><i class="fa fa-youtube"></i></div>
                                    <h6 class="btn-social-counter__title">{{ data_get($post, 'user.first_name') }}'s Youtube Account</h6>
                                    <span class="btn-social-counter__add-icon"></span>
                                </a>
                            @endif
                            @if(@Sentinel::getUser()->social_media['google_url'] != null)
                                <a href="{{ @Sentinel::getUser()->social_media['google_url'] }}" class="btn-social-counter btn-social-counter--gplus" target="_blank">
                                    <div class="btn-social-counter__icon"><i class="fa fa-google"></i></div>
                                    <h6 class="btn-social-counter__title">{{ data_get($post, 'user.first_name') }}'s Google Account</h6>
                                    <span class="btn-social-counter__add-icon"></span>
                                </a>
                            @endif
                            @if(@Sentinel::getUser()->social_media['pinterest_url'] != null)
                                <a href="{{ @Sentinel::getUser()->social_media['pinterest_url'] }}" class="btn-social-counter btn-social-counter--youtube" target="_blank">
                                    <div class="btn-social-counter__icon"><i class="fa fa-pinterest"></i></div>
                                    <h6 class="btn-social-counter__title">{{ data_get($post, 'user.first_name') }}'s Pinterest Account</h6>
                                    <span class="btn-social-counter__add-icon"></span>
                                </a>
                            @endif
                            @if(@Sentinel::getUser()->social_media['linkedin_url'] != null)
                                <a href="#" class="btn-social-counter btn-social-counter--fb" target="_blank">
                                    <div class="btn-social-counter__icon"><i class="fa fa-linkedin"></i></div>
                                    <h6 class="btn-social-counter__title">{{ data_get($post, 'user.first_name') }}'s LinkedIn Account</h6>
                                    <span class="btn-social-counter__add-icon"></span>
                                </a>
                            @endif
                        </aside>
                    @endif
                    <!-- Activity Log -->
                    <aside class="widget card widget--sidebar widget-newslog">
                        <div class="widget__title card__header">
                            <h4>Activity Log</h4>
                        </div>
                        <div class="widget__content card__content">
                            <ul class="newslog">
                                <li class="newslog__item newslog__item--join">
                                    <div class="newslog__item-inner">
                                        <div class="newslog__content"><strong>Jenny Thomps</strong> is now the new <strong>Team Recruiter</strong> for the East Coast Colleges.</div>
                                        <div class="newslog__date">December 19, 2015</div>
                                    </div>
                                </li>
                                <li class="newslog__item newslog__item--injury">
                                    <div class="newslog__item-inner">
                                        <div class="newslog__content"><strong>Robert Frankson</strong> will have a surgery and will be out for a month. Interim coach will be <strong>Frank Roberts</strong>.</div>
                                        <div class="newslog__date">September 26, 2014</div>
                                    </div>
                                </li>
                                <li class="newslog__item newslog__item--join">
                                    <div class="newslog__item-inner">
                                        <div class="newslog__content"><strong>Max Stevens</strong> is now the <strong>2nd Team Doctor</strong> after a succesfull run in the Sharks.</div>
                                        <div class="newslog__date">September 26, 2014</div>
                                    </div>
                                </li>
                                <li class="newslog__item newslog__item--exit">
                                    <div class="newslog__item-inner">
                                        <div class="newslog__content"><strong>Tommy Flankers</strong> left the team after 2 years as the <strong>2nd Team Doctor</strong>.</div>
                                        <div class="newslog__date">August 12, 2014</div>
                                    </div>
                                </li>
                                <li class="newslog__item newslog__item--join">
                                    <div class="newslog__item-inner">
                                        <div class="newslog__content"><strong>Patrick Storm</strong> is now the new <strong>Team Recruiter</strong> for the West Coast Colleges.</div>
                                        <div class="newslog__date">April 19, 2014</div>
                                    </div>
                                </li>
                                <li class="newslog__item newslog__item--join">
                                    <div class="newslog__item-inner">
                                        <div class="newslog__content"><strong>Alexa Polson</strong> is now the new <strong>Athletic Trainer</strong> after a succesfull run in the Pirates.</div>
                                        <div class="newslog__date">November 27, 2013</div>
                                    </div>
                                </li>
                                <li class="newslog__item newslog__item--join">
                                    <div class="newslog__item-inner">
                                        <div class="newslog__content"><strong>Savannah Lavender</strong> is the new <strong>Team Nutritionist</strong> with more than 500.000 followers.</div>
                                        <div class="newslog__date">February 15, 2012</div>
                                    </div>
                                </li>
                                <li class="newslog__item newslog__item--join">
                                    <div class="newslog__item-inner">
                                        <div class="newslog__content"><strong>Robert Frankson</strong> is now the new <strong>Alchemist Coach</strong> after a succesfull run in the Lucky Clovers.</div>
                                        <div class="newslog__date">March 22, 2008</div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </div>
    <!-- Content / End -->
@endsection

