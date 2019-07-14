<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Employee;
use JWTAuth;

class EmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $result = Employee::with('created_by','updated_by');
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
        $employee = new Employee();
        // dd($data['dob']);
        $employee->name = $data['name'];
        $employee->nip = $data['nip'];
        $employee->birth_place = $data['birth_place'];
        $employee->dob = $data['dob']['year'].'-'.$data['dob']['month'].'-'.$data['dob']['day'];
        $employee->address = $data['address'];
        $employee->created_by = $user->id;
        $employee->updated_by = $user->id;

        if($employee->save()){
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
        $result = Employee::with('created_by','updated_by')->find($id);
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
        $employee = Employee::find($data['id']);
        // $query = $employee->update($input);
        $employee->name = $data['name'];
        $employee->nip = $data['nip'];
        $employee->birth_place = $data['birth_place'];
        $employee->dob = $data['dob']['year'].'-'.$data['dob']['month'].'-'.$data['dob']['day'];
        $employee->address = $data['address'];
        $employee->updated_by = $user->id;

        if($employee->save()){
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
        $employee = new Employee();

        $employee = $employee->find($id);
        $query = $employee->delete();

        if($query){
            $data['success'] = 'success';
        }else $data['success'] = 'error';

        $data['data'] = $employee->all();

        return $data;
    }
}
