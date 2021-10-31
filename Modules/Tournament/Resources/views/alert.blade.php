<div class="col-12">
    @if(session('error'))
        <div id="error_m" class="alert alert-danger">
            {{session('error')}}
        </div>
    @endif
    @if(session('success'))
        <div id="success_m" class="alert alert-success">
            {{session('success')}}
        </div>
    @endif
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
</div>
