@extends('layouts.app')

@section('content')
<h1> Criar Loja </h1>
<form action="{{route('admin.stores.update', ['store' => $store->id])}}" method="post" enctype="multipart/form-data">
    @csrf
    @method('PUT')

    <div class="form-group">
        <label>Nome da Loja</label>
        <input type="text" name="name" value = "{{$store->name}}" class="form-control">
    </div>
    <div class="form-group">
        <label>Descrição</label>
        <input type="text" name="description" value = "{{$store->description}}" class="form-control">
    </div>
    <div class="form-group">
        <label>Telefone</label>
        <input type="text" name="phone" value = "{{$store->phone}}" class="form-control">
    </div>
    <div class="form-group">
        <label>Celular</label>
        <input type="text" name="mobile_phone" value = "{{$store->mobile_phone}}" class="form-control">
    </div>
    <div class="div form-group">
        <p>
            <img src="{{asset('storage/'. $store->logo)}}" alt="">
        </p>
        <label for="">Carregar a logo</label>
        <input type="file" name="logo" class="form-control @error('logo') is-invalid @enderror">
        @error('logo')
            <div class="invalid-feedback">
                {{$message}}
            </div>
        @enderror
    </div>

    <div>
        <button type="submit" class="btn btn-lg btn-success">Criar Loja</button>
    </div>
</form>
@endsection
