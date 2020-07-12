@extends('layouts.app')
@section('title', 'Edit Post')

@section('content')

    <div class="container">
        <h1>Edit Post</h1>

        <div class="custom-card text-left p-3">
            {!! Form::open(['action' => ['PostsController@update', $post->id], 'method' => 'POST', 'enctype' => 'multipart/form-data']) !!}
                <div class="row">
                    <div class="form-group col-lg-12">
                        {{Form::label('title', 'Title')}}
                        {{Form::text('title', $post->title, ['class' => 'form-control'])}}
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-lg-12">
                        {{Form::label('meta', 'Meta Description')}}
                        {{Form::text('meta', $post->meta, ['class' => 'form-control'])}}
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-lg-12">
                        {{Form::label('metaKeys', 'Meta Keywords')}}
                        {{Form::text('metaKeys', $post->meta_keys, ['class' => 'form-control'])}}
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-lg-12">
                        {{Form::label('body', 'Body')}}
                        {{Form::textarea('body', $post->body, ['id' => 'article-ckeditor','class' => 'form-control'])}}
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-lg-12">
                        {{Form::file('image_source')}}
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-lg-12">
                        {{Form::submit('Update', ['class' => 'btn btn-sm btn-primary'])}}
                    </div>
                </div>
                {{Form::hidden('_method', 'PUT')}}
            {!! Form::close() !!}
        </div>
    </div>

@endsection