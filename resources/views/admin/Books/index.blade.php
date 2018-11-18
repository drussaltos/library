@extends('admin.layout')

@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Blank page
                <small>it all starts here</small>
            </h1>
        </section>

        <!-- Main content -->
        <section class="content">
            {{Form::open([
                'route' => 'books.store',
                'files' => true
            ])}}

            <!-- Default box -->
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Листинг книг</h3>
                    @include('admin.errors')
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="form-group">
                        <a href="{{route('books.create')}}" class="btn btn-success">Добавить</a>
                    </div>
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th class="col-lg-2">Название</th>
                            <th class="col-lg-2">Авторы</th>
                            <th class="col-lg-6">Описание</th>
                            <th>Действия</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($books as $book)
                            <tr>
                                <td>{{$book->id}}</td>
                                <td>{{$book->title}}</td>
                                <td>{{$book->getNameAuthors()}}</td>
                                <td class="coll-ml-5">{{$book->description}}</td>
                                <td><a href="{{route('books.edit', $book->id)}}" class="fa fa-pencil"></a>
                                    {{Form::open(['route'=>['books.destroy', $book->id], 'method'=>'delete'])}}
                                        <button onclick="return confirm('Вы уверены?')" type="submit" class="delete">
                                            <i class="fa fa-remove"></i>
                                        </button>
                                    {{Form::close()}}
                            </tr>
                        @endforeach
                        </tfoot>
                    </table>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
            {{Form::close()}}
        </section>
        <!-- /.content -->
    </div>
@endsection