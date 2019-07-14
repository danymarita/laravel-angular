@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Form Test Logika</div>

                <div class="panel-body">
                    @if (session('message'))
                        <div class="alert alert-{{ session('type') }}" role="alert">
                            {!! session('message') !!}
                            <br />
                            @if (session('type') == 'success')
                                @foreach(session('deret_angka') as $row)
                                    {{ $row }} <br />
                                @endforeach
                            @endif
                        </div>
                    @endif
                    <form method="POST" action="{{ route('test-logika-proses') }}" class="form-horizontal">
                        {{ csrf_field() }}
                        <div class="form-group row">
                            <label for="soal" class="col-md-4 col-form-label text-md-right">Pilih Soal</label>

                            <div class="col-md-6">
                                <select id="soal" class="form-control" name="soal">
                                    <option value="">Pilih soal</option>
                                    <option value="1" {{ (old('soal') == 1) ? 'selected' : '' }}>Soal 1.a</option>
                                    <option value="2" {{ (old('soal') == 2) ? 'selected' : '' }}>Soal 1.b</option>
                                    <option value="3" {{ (old('soal') == 3) ? 'selected' : '' }}>Soal 1.c</option>
                                </select>
                                @if ($errors->has('soal'))
                                    <span class="invalid-feedback has-error" role="alert">
                                        <strong>{{ $errors->first('soal') }}</strong>
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