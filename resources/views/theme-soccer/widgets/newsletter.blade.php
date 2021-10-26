<!-- Widget: Newsletter -->
<aside class="widget widget--sidebar card widget-newsletter">
    <div class="widget__title card__header">
        <h4>{{ __('newsletter') }}</h4>
    </div>
    <div class="widget__content card__content">
        <h5 class="widget-newsletter__subtitle">Subscribe Now!</h5>
        <div class="widget-newsletter__desc">
            <p>{{ __('newsletter_description') ?? 'Subscribe to our mailing list to get the new updates!' }}</p>
        </div>
        <form action="{{ route('subscribe.newsletter') }}" method="post" class="inline-form">
            @csrf
            <div class="input-group">
                <input name="email" type="email" class="form-control" placeholder="{{__('email_address')}}">
                <span class="input-group-append"><button class="btn btn-lg btn-default" type="submit">Send</button></span>
            </div>
        </form>
    </div>
</aside>
<!-- Widget: Newsletter / End -->

