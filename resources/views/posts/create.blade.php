@extends('layouts.app')
@section('title', 'Create Post')

@section('content')

    <div class="container">
        <h1>Create Post</h1>

        <div class="custom-card text-left p-3">
            {!! Form::open(['action' => 'PostsController@store', 'method' => 'POST']) !!}
                <div class="row">
                    <div class="form-group col-lg-12">
                        {{Form::label('title', 'Title')}}
                        {{Form::text('title', '', ['class' => 'form-control'])}}
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-lg-12">
                        {{Form::label('meta', 'Meta Description')}}
                        {{Form::text('meta', '', ['class' => 'form-control'])}}
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-lg-12">
                        {{Form::label('metaKeys', 'Meta Keywords')}}
                        {{Form::text('metaKeys', '', ['class' => 'form-control'])}}
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-lg-12">
                        {{Form::label('body', 'Body')}}
                        {{Form::textarea('body', '', ['id' => 'article-ckeditor','class' => 'form-control'])}}
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-lg-12">
                        {{Form::submit('Save', ['class' => 'btn btn-sm btn-primary'])}}
                    </div>
                </div>
            {!! Form::close() !!}
        </div>
    </div>

@endsection