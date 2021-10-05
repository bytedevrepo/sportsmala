@extends('theme-soccer.layouts.app')
@section('content')
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <h1 class="page-heading__title">Contact <span class="highlight">Us</span></h1>
                    <ol class="page-heading__breadcrumb breadcrumb">
                        <li class="breadcrumb-item"><a href="_soccer_index.html">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Contact Us</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="site-content">
        <div class="container">
            <!-- Contact Area -->
            <div class="card">
                <header class="card__header">
                    <h4>Contact Form</h4>
                </header>
                <div class="card__content">
                    <div class="row">
                        <div class="col-lg-4">
                            <h5>Questions? Send us a Message!</h5>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, remeriam, eaque ipsa quae ab illo et quasi architecto.</p>
                            <div class="spacer-sm"></div>
                            <h5>Open Practices</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor doloremque incididunt ut labore et dolore magna.</p>
                            <address><strong>Mondays to Fridays:</strong> 9:00am to 12:00pm</address>
                        </div>
                        <div class="col-lg-8">
                            <!-- Contact Form -->
                            <form action="#" class="contact-form">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group"><label for="contact-form-name">Your Name <span class="required">*</span></label> <input type="text" name="contact-form-name" id="contact-form-name" class="form-control" placeholder="Your full name..."></div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group"><label for="contact-form-email">Your Email <span class="required">*</span></label> <input type="email" name="contact-form-email" id="contact-form-email" class="form-control" placeholder="Your email..."></div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group"><label for="contact-form-subject">Subject</label> <input type="text" name="contact-form-subject" id="contact-form-subject" class="form-control" placeholder="Your subject..."></div>
                                    </div>
                                </div>
                                <div class="form-group"><label for="contact-form-message">Your Message <span class="required">*</span></label> <textarea name="name" rows="5" class="form-control" placeholder="Enter your message here..."></textarea></div>
                                <div class="form-group form-group--submit"><button type="submit" class="btn btn-primary-inverse btn-lg btn-block">Send Your Message</button></div>
                            </form>
                            <!-- Contact Form / End -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- Contact Area / End -->
        </div>
    </div>
@stop
