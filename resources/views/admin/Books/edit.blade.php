@extends('admin.layout')

@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Изменить статью
                <small>приятные слова..</small>
            </h1>
        </section>

        <!-- Main content -->
        <section class="content">
            {{Form::open([
                'route' => ['books.update', $book->id],
                'file'  => true,
                'method'    => 'put'
            ])}}
            <!-- Default box -->
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Обновляем статью</h3>
                    @include('admin.errors')
                </div>
                <div class="box-body">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Название</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="" value="{{$book->title}}" name="title">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputFile">Файл</label>
                            <input type="file" id="exampleInputFile">

                            <p class="help-block">Уведомление о форматах..</p>
                        </div>
                        <div class="form-group">
                            <label>Авторы</label>
                            {{Form::select('author_id[]',
                            $authors,
                            $selectedAuthors,
                            ['class' => 'form-control select2', 'multiple'=>'multiple'])
                            }}
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Полный текст</label>
                            <textarea name="description" id="" cols="30" rows="10" class="form-control">{{$book->description}}</textarea>
                        </div>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    <a href="{{route('books.index')}}" class="btn btn-default">Назад</a>
                    <button class="btn btn-warning pull-right">Изменить</button>
                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
                {{Form::close()}}
        </section>
        <!-- /.content -->
    </div>
@endsection