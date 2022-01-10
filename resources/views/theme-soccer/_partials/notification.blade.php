@if(session('error'))
    <div class="alert alert-danger alert-dismissible">
        <strong>{{session('error')}}</strong>
    </div>
@endif

@if(isset($errors))
    @if ($errors->any())
        <div class="alert alert-danger alert-dismissible">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
            @foreach ($errors->getMessages() as $key => $error)
                <strong>{{ $key }} ! </strong> {{ $error[0] }}
            @endforeach
        </div>
    @endif
@endif

@if(session('success'))
    <div class="alert alert-success">
        <strong>{{session('success')}}</strong>
    </div>
@endif
