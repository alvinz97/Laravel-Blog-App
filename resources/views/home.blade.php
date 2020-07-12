@extends('layouts.app')
@section('title', 'Dashboard')

@section('content')
    <div class="container">
        <div class="header">
            <h1>Your Posts</h1>
            <a href="/create" class="text-right btn btn-sm btn-success mb-2">Create <i class="fa fa-plus"></i></a>
        </div>
        <div class="custom-card p-3">
            @if (count($posts) > 0)
                @foreach ($posts as $post)
                    <div class="row">
                        <div class="col-lg-8">
                            <img src="/storage/blog_images/{{$post->image_url}}" alt="{{$post->title}}" class="img-fluid">
                        </div>
                        <div class="col-lg-4 text-left">
                            <h3><a href="/post/{{$post->id}}"> {!! $post->title !!} </a></h3>

                             <p>{!! Str::substr($post->body, 0, 550) !!}</p>

                            <div class="row">
                                <div class="col-lg-6 text-left">
                                    <a href="post/{{$post->id}}/edit" class="btn btn-sm btn-dark">Edit</a>
                                </div>
                                <div class="col-lg-6 text-right">
                                    {!! Form::open(['action' => ['PostsController@destroy', $post->id], 'method' =>'POST']) !!}
                                        {!! Form::hidden('_method', 'DELETE') !!}
                                        {!! Form::submit('Delete', ['class' => 'btn btn-sm btn-warning']) !!}
                                    {!! Form::close() !!}
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            @else
                <h3>You Have No Posts</h3>
            @endif
        </div>
    </div>
@endsection
