@extends('layout')


@section('content')
    <container>
        <div class="container" style="height: 900px;">
            <div class="row">
                <table class="table table-hover table-bordered" style="border-width:  medium; border-color: #3d4852;">
                    <thead>
                    <tr style="background-color: #3d4852; color: #fff;">
                        <th class="col-lg-1">№</th>
                        <th  class="col-lg-2">Название книги</th>
                        <th class="col-lg-2">Авторы</th>
                        <th>Описание</th>
                    </tr>
                    </thead>
                    @foreach($books as $book)
                    <tbody>
                    <tr style="border: 1px solid red !important;">
                        <td>{{$book->id}}</td>
                        <td>{{$book->title}}</td>
                        <td>{{$book->getNameAuthors()}}</td>
                        <td>{{$book->description}}</td>
                    </tr>
                    @endforeach
                    </tbody>
                </table>
                <div class="box-body">
                    <div class="form-group">
                        <a href="{{route('index')}}" class="btn btn-success">Редактировать</a>
                    </div>
                </div>
            </div>
        </div>
    </container>
@endsection