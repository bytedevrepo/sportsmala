<div class="post-comment-form card card--lg">
    <header class="post-comment-form__header card__header">
        <h4>Write a Comment</h4>
    </header>
    <div class="post-comment-form__content card__content">
        @if(Cartalyst\Sentinel\Laravel\Facades\Sentinel::check())
            <form method="post" name="contact-form" action="{{ route('article.save.comment') }}" class="comment-form">
                @csrf
                <input type="hidden" name="post_id" value="{{ $post->id }}">
                <div class="form-group">
                    <label class="control-label" for="textarea-comment">Your Comment</label>
                    <textarea name="comment" id="textarea-comment" rows="5" class="form-control" required></textarea>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-default btn-block btn-lg">Post Your Comment</button>
                </div>
            </form>
        @else
            Please <a href="{{ route('site.login.form') }}">Login</a> to comment.
        @endif
    </div>
</div>
