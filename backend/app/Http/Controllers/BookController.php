<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Books;
use JWTAuth;

class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $result = Books::with('created_by','updated_by');
        return $result->paginate(10);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user = JWTAuth::parseToken()->toUser();
        $data = json_decode($request->getContent(), true);
        $book = new Books();

        $book->isbn = $data['isbn'];
        $book->title = $data['title'];
        $book->author = $data['author'];
        $book->description = $data['description'];
        $book->created_by = $user->id;
        $book->updated_by = $user->id;

        if($book->save()){
            $data['success'] = 'success';
        }else $data['success'] = 'error';

        return $data;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $result = Books::with('created_by','updated_by')->find($id);
        return $result;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        $user = JWTAuth::parseToken()->toUser();
        $data = json_decode($request->getContent(), true);
        $book = Books::find($data['id']);

        // $query = $book->update($input);
        $book->isbn = $data['isbn'];
        $book->title = $data['title'];
        $book->author = $data['author'];
        $book->description = $data['description'];
        $book->updated_by = $user->id;

        if($book->save()){
            $data['success'] = 'success';
        }else $data['success'] = 'error';

        return $data;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $books = new Books();

        $book = $books->find($id);
        $query = $book->delete();

        if($query){
            $data['success'] = 'success';
        }else $data['success'] = 'error';

        $data['data'] = $books->all();

        return $data;
    }
}
