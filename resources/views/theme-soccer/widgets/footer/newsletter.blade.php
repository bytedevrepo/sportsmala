<div class="col-sm-6 col-lg-3 col-md-3">
    <div class="footer-col-inner">
        <!-- Widget: Contact / End -->
        <div class="widget widget--footer widget-contact">
            <h4 class="widget__title">{{ data_get($detail, 'title') }}</h4>
            <div class="widget__content">
                <p>{{ __('newsletter_description') ?? 'Subscribe to our mailing list to get the new updates!' }}</p>
                <form action="{{ route('subscribe.newsletter') }}" method="post" class="contact-form">
                    @csrf
                    <div class="form-group form-group--xs">
                        <input type="email" name="email" class="form-control input-sm" id="contact-form-email" placeholder="{{__('email_address')}}" required>
                    </div>
                    <button type="submit" class="btn btn-primary-inverse btn-sm btn-block">{{__("Subscribe Now")}}</button>
                </form>
            </div>
        </div>
        <!-- Widget: Contact / End -->
    </div>
</div>

