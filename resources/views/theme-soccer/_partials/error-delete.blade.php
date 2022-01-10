{{--@if ($errors->any())--}}
    {{--<div class="alert alert-danger">--}}
        {{--@foreach ($errors->all() as $error)--}}
            {{--<p>{{ $error }}</p>--}}
        {{--@endforeach--}}
    {{--</div>--}}
{{--@endif--}}
@if ($errors->any())
    <div class="alert alert-danger alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
        @foreach ($errors->getMessages() as $key => $error)
            <strong>{{ $key }} ! </strong> {{ $error[0] }}
        @endforeach
    </div>
@endif
