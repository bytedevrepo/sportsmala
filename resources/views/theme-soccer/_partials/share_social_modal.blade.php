<div class="modal fade" id="shareModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-notify modal-primary" role="document">
        <!--Content-->
        <div class="modal-content">
            <!--Header-->
            <div class="modal-header">
                <p class="heading lead">Share Post</p>

                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="white-text">&times;</span>
                </button>
            </div>

            <!--Body-->
            <div class="modal-body">
                <div class="text-center">
                    <i class="fa fa-check fa-4x mb-3 animated rotateIn"></i>
                    <p>Share this post on social media.</p>
                    <a href="" id="facebook" class="mr-4" target="_blank">facebook</a>
                    <a href="" id="twitter" class="mr-4" target="_blank">twitter</a>
                </div>
            </div>

            <!--Footer-->
            {{--<div class="modal-footer justify-content-center">--}}
            {{--<a role="button" class="btn btn-primary-modal">Get it now <i class="fa fa-diamond ml-1"></i></a>--}}
            {{--<a role="button" class="btn btn-outline-secondary-modal waves-effect" data-dismiss="modal">No, thanks</a>--}}
            {{--</div>--}}
        </div>
        <!--/.Content-->
    </div>
</div>

@section('script')
    <script>
        $(document).ready(function () {
            $(".shareSocial").on('click', function () {
                let urlFB = $(this).attr('data-fb');
                let urlTwitter = $(this).attr('data-twitter');
                $("#facebook").attr('href', urlFB);
                $("#twitter").attr('href', urlTwitter);
                $('#shareModal').modal('show');
            })
        })
    </script>
@stop
