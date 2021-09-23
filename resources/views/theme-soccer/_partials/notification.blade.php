@if(session('error'))
    <div class="alert alert-danger alert-dismissible">
        <strong>{{session('error')}}</strong>
    </div>
@endif

@if(isset($errors))
    @if ($errors->any())
        @foreach ($errors->all() as $error)
            <div class="alert alert-danger">
                <strong>{{ $error }}</strong>
            </div>
        @endforeach
    @endif
@endif

@if(session('success'))
    <div class="alert alert-success">
        <strong>{{session('success')}}</strong>
    </div>
@endif
