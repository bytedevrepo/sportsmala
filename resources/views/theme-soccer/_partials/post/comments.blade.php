<div class="post-comments card card--lg">
    <header class="post-commments__header card__header">
        <h4>{{ __('comments') }} ({{$comments->count()}})</h4>
    </header>
    <div class="post-comments__content card__content">
        <ul class="comments">
            @foreach($comments as $comment)
                <li class="comments__item">
                    <div class="comments__inner">
                        <header class="comment__header">
                            <div class="comment__author">
                                <figure class="comment__author-avatar">
                                    @if(@$comment->user->profile_image != null)
                                        <img src="{{asset(@$post->user->profile_image)}}" alt="">
                                    @else
                                        <img src="{{static_asset('site/theme-soccer/assets/images/samples/avatar-empty.png') }}" alt="">
                                    @endif
                                </figure>
                                <div class="comment__author-info">
                                    <h5 class="comment__author-name">
                                        {{ data_get($comment, 'user.first_name') }} {{ data_get($comment, 'user.last_name') }}
                                    </h5>
                                    <time class="comment__post-date" datetime="$comment->created_at">
                                        {{ $diff = Carbon\Carbon::parse($comment->created_at)->diffForHumans() }}
                                    </time>
                                </div>
                            </div>
                            <div class="comment__reply">
                                <a href="#" class="comment__reply-link btn btn-link btn-xs">Reply</a>
                            </div>
                        </header>
                        <div class="comment__body">
                            {{ $comment->comment ?? '' }}
                        </div>
                    </div>
                </li>
            @endforeach
        </ul>
    </div>
</div>
