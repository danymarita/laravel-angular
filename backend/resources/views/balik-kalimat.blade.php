@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Form Balik Kalimat</div>

                <div class="panel-body">
                    @if (session('message'))
                        <div class="alert alert-{{ session('type') }}" role="alert">
                            {!! session('message') !!}
                            @if (session('type') == 'success')
                            Kalimat asli: <strong>{{ session('kalimat_asli') }}</strong>, Hasil balik kalimat : <strong>{{ session('kalimat_balik') }}</strong>
                            @endif
                        </div>
                    @endif
                    <form method="POST" action="{{ route('balik-kalimat-proses') }}" class="form-horizontal">
                        {{ csrf_field() }}
                        <div class="form-group row">
                            <label for="kalimat" class="col-md-4 col-form-label text-md-right">Kalimat</label>

                            <div class="col-md-6">
                                <input id="kalimat" type="text" class="form-control @error('email') is-invalid @enderror" name="kalimat" value="{{ old('kalimat') }}" autofocus>

                                @if ($errors->has('kalimat'))
                                    <span class="invalid-feedback has-error" role="alert">
                                        <strong>{{ $errors->first('kalimat') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" class="btn btn-primary">Proses</button>    
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection