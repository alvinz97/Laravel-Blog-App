@extends('layouts.app')
@section('title', 'Show Post')

@section('content')

    <div class="container">

        <div class="custom-card p-3">
            <div class="image-container">
                <img src="" alt="">
            </div>

            <div class="post-container text-left">
                <h1 class="text-center">{!! $post->title !!}</h1>

                <p class="text-left">{!! $post->body !!}</p>

                <p class="mt-2 text-left"><small>Written on {{$post->created_at}} by <i><strong>{{ $post->user->name }}</strong></i></small></p>
            </div>
            <div class="row">
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
        </div>

        
    </div>

@endsection