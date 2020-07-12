@extends('layouts.app')
@section('title', 'Home')

@section('content')

    <div class="container">

        @if (count($posts) > 0)
            @foreach ($posts as $post)
                <div class="row mb-2">
                    <div class="col-lg-8">

                    </div>
                    <div class="col-lg-4">
                        <h2><a href="/post/{{$post->id}}"> {!! $post->title !!} </a></h2>

                        <p>{!! $post->body !!}</p>

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