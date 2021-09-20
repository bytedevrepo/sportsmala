<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <?php echo $__env->make('site.partials.seo_og', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <title><?php echo e(settingHelper('seo_title')); ?></title>

    
    <link rel="stylesheet" href="<?php echo e(static_asset('site/css/bootstrap.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(static_asset('site/css/font-awesome.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(static_asset('site/css/magnific-popup.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(static_asset('site/css/animate.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(static_asset('site/css/slick.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(static_asset('site/css/structure.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(static_asset('site/css/main.css')); ?>">
    <?php if($language->text_direction == "RTL"): ?>
        <link rel="stylesheet" href="<?php echo e(static_asset('site/css/rtl.css')); ?>">
    <?php endif; ?>
    <link rel="stylesheet" href="<?php echo e(static_asset('site/css/custom.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(static_asset('site/css/responsive.css')); ?>">

    <?php echo $__env->yieldContent('style'); ?>

    <link href="https://fonts.googleapis.com/css2?family=<?php echo e(data_get(activeTheme(), 'options.fonts')); ?>:wght@400;500;600;700&display=swap" rel="stylesheet">

    
    <link rel="icon" href="<?php echo e(static_asset(settingHelper('favicon'))); ?>">
    <link rel="apple-touch-icon" sizes="144x144" href="<?php echo e(static_asset('site/images/ico/apple-touch-icon-precomposed.png')); ?>">
    <link rel="apple-touch-icon" sizes="114x114" href="<?php echo e(static_asset('site/images/ico/apple-touch-icon-114-precomposed.png')); ?>">
    <link rel="apple-touch-icon" sizes="72x72" href="<?php echo e(static_asset('site/images/ico/apple-touch-icon-72-precomposed.png')); ?>">
    <link rel="apple-touch-icon" sizes="57x57" href="<?php echo e(static_asset('site/images/ico/apple-touch-icon-57-precomposed.png')); ?>">

    <?php if(settingHelper('predefined_header')!=null): ?>
            <?php echo base64_decode(settingHelper('predefined_header')); ?>

    <?php endif; ?>
    <?php if(settingHelper('custom_header_style')!=null): ?>
        <?php echo base64_decode(settingHelper('custom_header_style')); ?>

    <?php endif; ?>

    <?php echo $__env->make('feed::links', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    


    <?php echo $__env->yieldPushContent('style'); ?>

    <style type="text/css">
      :root {
          --primary-color: <?php echo e(data_get(activeTheme(), 'options.primary_color')); ?>;
          --primary-font: <?php echo e(\Config::get('site.fonts.'.data_get(activeTheme(), 'options.fonts').'')); ?>;
          --plyr-color-main:<?php echo e(data_get(activeTheme(), 'options.primary_color')); ?>;
      }
    </style>

    <script async src="https://www.googletagmanager.com/gtag/js?id=<?php echo e(settingHelper('google_analytics_id')); ?>"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());
        gtag('config', '<?php echo e(settingHelper('google_analytics_id')); ?>');
    </script>
</head>

<body class="<?php echo e(defaultModeCheck()); ?>">
    <div id="switch-mode" class="<?php echo e(defaultModeCheck() == 'sg-dark'? 'active':''); ?>">
        <div class="sm-text"><?php echo e(__('dark_mode')); ?></div>
        <div class="sm-button">
            <input type="hidden" id="url" value="<?php echo e(url('/')); ?>">
          <span></span>
        </div>
    </div>
    <?php if(settingHelper('preloader_option')==1): ?>
        <div id="preloader">
            <!-- <img src="<?php echo e(static_asset('site/images/')); ?>/preloader-2.gif" alt="Image" class="tr-preloader img-fluid"> -->
            <div class="main-fader" responsive-height-comments>
  <div class="loader">
<svg viewBox="0 0 866 866" xmlns="http://www.w3.org/2000/svg">
            <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 164.83 151.5">
                <path class="path-0" d="M117.24,69.24A8,8,0,0,0,115.67,67c-4.88-4-9.8-7.89-14.86-11.62A4.93,4.93,0,0,0,96.93,55c-5.76,1.89-11.4,4.17-17.18,6a4.36,4.36,0,0,0-3.42,4.12c-1,6.89-2.1,13.76-3,20.66a4,4,0,0,0,1,3.07c5.12,4.36,10.39,8.61,15.68,12.76a3.62,3.62,0,0,0,2.92.75c6.29-2.66,12.52-5.47,18.71-8.36a3.49,3.49,0,0,0,1.68-2.19c1.34-7.25,2.54-14.55,3.9-22.58Z"
                    fill="#002763" />
                <path class="path-1" d="M97.55,38.68A43.76,43.76,0,0,1,98,33.44c.41-2.36-.5-3.57-2.57-4.64C91.1,26.59,87,24,82.66,21.82a6.18,6.18,0,0,0-4-.71C73.45,22.55,68.32,24.25,63.22,26c-3.63,1.21-6.08,3.35-5.76,7.69a26.67,26.67,0,0,1-.6,4.92c-1.08,8.06-1.08,8.08,5.86,11.92,3.95,2.19,7.82,5.75,11.94,6.08s8.76-2.41,13.12-3.93c9.33-3.29,9.33-3.3,9.78-14Z"
                    fill="#002763" />
                <path class="path-2" d="M66.11,126.56c5.91-.91,11.37-1.7,16.81-2.71a3.3,3.3,0,0,0,1.87-2.17c1-4.06,1.73-8.19,2.84-12.24.54-2-.11-3-1.55-4.15-5-4-9.9-8.12-15-12a6.19,6.19,0,0,0-4.15-1.1c-5.35.66-10.7,1.54-16,2.54A4,4,0,0,0,48.34,97a109.13,109.13,0,0,0-3,12.19,4.47,4.47,0,0,0,1.34,3.6c5.54,4.36,11.23,8.53,16.91,12.69a10.84,10.84,0,0,0,2.57,1.11Z"
                    fill="#002763" />
                <path class="path-3" d="M127.42,104.12c4.1-2.1,8-3.93,11.72-6a6,6,0,0,0,2.27-3,58.22,58.22,0,0,0,3.18-29.92c-.26-1.7-8-7.28-9.71-6.85A5,5,0,0,0,133,59.65c-2.81,2.49-5.71,4.88-8.33,7.56a9.46,9.46,0,0,0-2.47,4.4c-1.29,6.49-2.38,13-3.35,19.55a5.73,5.73,0,0,0,.83,3.91c2.31,3.08,5,5.88,7.7,9Z"
                    fill="#002763" />
                <path class="path-4" d="M52.58,29.89c-2.15-.36-3.78-.54-5.39-.9-2.83-.64-4.92.1-7,2.32A64.1,64.1,0,0,0,26.09,54.64c-2.64,7.92-2.62,7.84,5.15,10.87,1.76.69,2.73.45,3.93-1C39.79,59,44.54,53.65,49.22,48.2a4.2,4.2,0,0,0,1.13-2c.8-5.32,1.49-10.68,2.24-16.34Z"
                    fill="#002763" />
                <path class="path-5" fill="#002763" d="M23,68.13c0,2.51,0,4.7,0,6.87a60.49,60.49,0,0,0,9.75,32.15c1.37,2.13,6.4,3,7,1.2,1.55-5,2.68-10.2,3.82-15.34.13-.58-.58-1.38-.94-2.06-2.51-4.77-5.47-9.38-7.45-14.37C32.94,71,28.22,69.84,23,68.13Z" />
                <path class="path-6" fill="#002763" d="M83.91,12.86c-.32.36-.66.71-1,1.07.9,1.13,1.57,2.62,2.73,3.33,4.71,2.84,9.56,5.48,14.39,8.1a9.29,9.29,0,0,0,3.13.83c5.45.69,10.89,1.38,16.35,1.94a10.41,10.41,0,0,0,3.07-.71c-11.48-9.9-24.26-14.61-38.71-14.56Z"
                />
                <path class="path-7" fill="#002763" d="M66.28,132.51c13.36,3.78,25.62,3.5,38-.9C91.68,129.59,79.36,128,66.28,132.51Z" />
                <path class="path-8" fill="#002763" d="M127.2,30.66l-1.27.37a18.58,18.58,0,0,0,1,3.08c3,5.52,6.21,10.89,8.89,16.54,1.34,2.83,3.41,3.82,6.49,4.9a60.38,60.38,0,0,0-15.12-24.9Z" />
                <path class="bb-9" fill="#002763" d="M117.35,125c5.58-2.32,16.9-13.84,18.1-19.2-2.41,1.46-5.18,2.36-6.78,4.23-4.21,5-7.89,10.37-11.32,15Z" />
            </svg>
        </svg>
  </div>
</div>
        </div>
    <?php endif; ?>


<?php echo $__env->make('site.layouts.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>


<?php echo $__env->yieldContent('content'); ?>

    <div class="scrollToTop" id="display-nothing">
        <a href="#"><i class="fa fa-angle-up"></i></a>
    </div>
<?php echo $__env->make('site.layouts.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>




<script src="<?php echo e(static_asset('site/js/jquery.min.js')); ?>"></script>
<script src="<?php echo e(static_asset('site/js/popper.min.js')); ?>"></script>
<script src="<?php echo e(static_asset('site/js/bootstrap.min.js')); ?>"></script>
<script src="<?php echo e(static_asset('site/js/slick.min.js')); ?>"></script>
<script src="<?php echo e(static_asset('site/js/theia-sticky-sidebar.min.js')); ?>"></script>
<script src="<?php echo e(static_asset('site/js/magnific-popup.min.js')); ?>"></script>
<script src="<?php echo e(static_asset('site/js/carouFredSel.js')); ?>"></script>
<?php echo $__env->yieldPushContent('script'); ?>
<script src="<?php echo e(static_asset('site/js/main.js')); ?>"></script>
<script src="<?php echo e(static_asset('js/custom.js')); ?>"></script>

<script type="text/javascript" src="<?php echo e(static_asset('site/js')); ?>/jquery.cookie.min.js"></script>
    <script src="<?php echo e(static_asset('site/js/lazyload.js')); ?>"></script>
    <?php
        if(settingHelper('notification_status') == '1'){
            $onesignal_appid                    =   settingHelper('onesignal_app_id');
            $onesignal_actionmessage            =   settingHelper('onesignal_action_message');
            $onesignal_acceptbuttontext         =   settingHelper('onesignal_accept_button');
            $onesignal_cancelbuttontext         =   settingHelper('onesignal_cancel_button');
        }
    ?>
    <script src="<?php echo e(static_asset('site/js')); ?>/bootstrap-tagsinput.min.js" async></script>

    <?php if(settingHelper('notification_status') == '1'): ?>
    <!-- oneSignal -->
    <script src="<?php echo e(static_asset('site/js')); ?>/OneSignalSDK.js" async=""></script>

    <script>
        var OneSignal = window.OneSignal || [];
        OneSignal.push(["init", {
            appId: "<?php echo e($onesignal_appid ?? ''); ?>",
            subdomainName: 'push',
            autoRegister: false,
            promptOptions: {
                /* These prompt options values configure both the HTTP prompt and the HTTP popup. */
                /* actionMessage limited to 90 characters */
                actionMessage: "<?php echo e($onesignal_actionmessage ?? ''); ?>",
                /* acceptButtonText limited to 15 characters */
                acceptButtonText: "<?php echo e($onesignal_acceptbuttontext ?? ''); ?>",
                /* cancelButtonText limited to 15 characters */
                cancelButtonText: "<?php echo e($onesignal_cancelbuttontext ?? ''); ?>"
            }
        }]);
    </script>

    <script src="<?php echo e(static_asset('site/js/onesignal_notification.js')); ?>"> </script>

    <?php endif; ?>


    <?php if(!blank(\Request::route())): ?>
        <?php if(\Request::route()->getName() == "article.detail"): ?>
            <?php if(settingHelper('adthis_option')==1 and settingHelper('addthis_public_id')!=null): ?>
                <?php echo base64_decode(settingHelper('addthis_public_id')); ?>

            <?php endif; ?>

            <?php if(settingHelper('facebook_comment')==1): ?>
                <div id="fb-root"></div>
                <script async defer crossorigin="anonymous" src="https://connect.facebook.net/<?php echo e(settingHelper('default_language')); ?>/sdk.js#xfbml=1&version=v8.0&appId=<?php echo e(settingHelper('facebook_app_id')); ?>&autoLogAppEvents=1" nonce="JOvaLAFF"></script>
            <?php endif; ?>
        <?php endif; ?>
    <?php endif; ?>

    <?php echo $__env->yieldContent('script'); ?>
    <?php echo $__env->yieldContent('player'); ?>
    <?php echo $__env->yieldContent('audio'); ?>

    <?php if(isset($post)): ?>
        <?php if(!blank(\Request::route())): ?>
            <?php if(settingHelper('adthis_option')==1 and settingHelper('addthis_public_id')!=null and \Request::route()->getName() == "article.detail"): ?>
                <script type="text/javascript">
                    (function($) {
                        "use strict";
                        var addthis_share = {
                            url: "<?php echo e(url()->current()); ?>",
                            title: "<?php echo e($post->meta_title); ?>",
                            description: "<?php echo e(strip_tags($post->meta_description)); ?>",
                            media: "<?php echo e(basePath(@$post->image)); ?>/<?php echo e(@$post->image->og_image); ?>"
                        }
                    })(jQuery);
                </script>
            <?php endif; ?>
        <?php endif; ?>
    <?php endif; ?>


    <?php if(settingHelper('custom_footer_js')!=null): ?>
        <?php echo base64_decode(settingHelper('custom_footer_js')); ?>

    <?php endif; ?>

    <script type="text/javascript" src="<?php echo e(static_asset('site/js/webp-support.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(static_asset('site/js/custom.js')); ?>" type="text/javascript"></script>

</body>
</html>
<?php /**PATH C:\xampp\htdocs\sportsmala\resources\views/site/layouts/app.blade.php ENDPATH**/ ?>