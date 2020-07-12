@extends('layouts.app')
@section('title', 'Home')

@section('content')

    <div class="container">

        @if (count($posts) > 0)
            @foreach ($posts as $post)
                <div class="row mb-2">
                    <div class="col-lg-8">
                        <img src="/storage/blog_images/{{$post->image_url}}" alt="{{$post->title}}" class="img-fluid">
                    </div>
                    <div class="col-lg-4">
                        <h2><a href="/post/{{$post->id}}"> {!! $post->title !!} </a></h2>

                        <p>{!! Str::substr($post->body, 0, 500) !!}</p>

                        <div class="text-center my-2">
                            <a href="/post/{{$post->id}}" class="btn btn-sm btn-custom">Read More</a>
                        </div>

                        <small>Written on {{$post->created_at}} by <i><strong>{{ $post->user->name }}</strong></i></small>
                    </div>
                </div>
            @endforeach
            {{$posts->links()}}
        @else
            <h3>No Post Found</h3>
        @endif

        
    </div>

@endsection