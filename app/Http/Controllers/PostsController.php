<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use Illuminate\Support\Facades\Storage;

class PostsController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth', ['except' => ['index', 'show']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::orderBy('created_at', 'desc')->paginate(10);
        return view('posts.index')->with('posts', $posts);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('posts.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'body' => 'required',
            'meta' => 'required',
            'metaKeys' => 'required',
            'image_source' => 'image|nullable|max:1999'
        ]);

        // File upload 
        if ($request->hasFile('image_source')) {
            $fullName = $request->file('image_source')->getClientOriginalName();
            $fileName = pathinfo($fullName, PATHINFO_FILENAME);
            $extention = $request->file('image_source')->getClientOriginalExtension();
            $fileNameToStrore = $fileName . '_' . time() . '.' . $extention;
            $path = $request->file('image_source')->storeAs('public/blog_images', $fileNameToStrore);
        } else {
            $fileNameToStrore = 'cover.jpg';
        }

        $post = new Post;
        $post->user_id = auth()->user()->id;
        $post->title = $request->input('title');
        $post->body = $request->input('body');
        $post->image_url = $fileNameToStrore;
        $post->meta = $request->input('meta');
        $post->meta_keys = $request->input('metaKeys');
        $post->save();

        return redirect('/post');

    }

    

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post = Post::find($id);
        return view('posts.show')->with('post', $post);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Post::find($id);

        // Check if correct user land on the page 
        if (auth()->user()->id !== $post->user_id) {
            return redirect('/post');
        }
        return view('posts.edit')->with('post', $post);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'title' => 'required',
            'body' => 'required',
            'meta' => 'required',
            'metaKeys' => 'required',
            'image_source' => 'image|nullable|max:1999'
        ]);

        // File upload 
        if ($request->hasFile('image_source')) {
            $fullName = $request->file('image_source')->getClientOriginalName();
            $fileName = pathinfo($fullName, PATHINFO_FILENAME);
            $extention = $request->file('image_source')->getClientOriginalExtension();
            $fileNameToStrore = $fileName . '_' . time() . '.' . $extention;
            $path = $request->file('image_source')->storeAs('public/blog_images', $fileNameToStrore);
        }

        $post = Post::find($id);
        $post->title = $request->input('title');
        $post->body = $request->input('body');

        if ($request->hasFile('image_source')) {
            $post->image_url = $fileNameToStrore;
        }

        $post->meta = $request->input('meta');
        $post->meta_keys = $request->input('metaKeys');
        $post->save();

        return redirect('/post');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::find($id);

        // Check if correct user land on the page 
        if (auth()->user()->id !== $post->user_id) {
            return redirect('/post');
        }

        if ($post->image_url != 'cover.jpg') {
            Storage::delete('public/blog_images/' . $post->image_url);
        }

        $post->delete();

        return redirect('/post');
    }
}
