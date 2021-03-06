@extends('layouts.app')
@section('title', 'Show Post')

@section('content')

    <div class="container">

        <div class="custom-card">
            <div class="image-container">
                <img src="/storage/blog_images/{{$post->image_url}}" alt="{{$post->title}}" class="img-fluid">
            </div>

            <div class="post-container text-left mt-4">
                <h1 class="text-center font-weight-bold">{!! $post->title !!}</h1>

                <div class="mx-3">
                    <p class="text-left">{!! $post->body !!}</p>
                </div>

                <p class="mt-2 ml-3 text-left"><small>Written on {{$post->created_at}} by <i><strong>{{ $post->user->name }}</strong></i></small></p>
            </div>
            @if (!Auth::guest())
                @if (Auth::user()->id == $post->user_id)
                    <div class="row p-3">
                        <div class="col-lg-6">
                            <div class="text-left">
                            <a href="{{$post->id}}/edit" class="btn btn-sm btn-dark">Edit</a>
                        </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="text-right">
                                {!! Form::open(['action' => ['PostsController@destroy', $post->id], 'method' =>'POST']) !!}
                                    {!! Form::hidden('_method', 'DELETE') !!}
                                    {!! Form::submit('Delete', ['class' => 'btn btn-sm btn-warning']) !!}
                                {!! Form::close() !!}
                            </div>
                        </div>
                    </div>
                @endif
            @endif
        </div>

        
    </div>

@endsection