<?php

namespace App\Http\Controllers\API\Web\Master;

use Throwable;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = \App\Models\User::paginate(10);
        return response()->json($users);
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
        $user = new \App\Models\User();

        $urlFileUpload = NULL;

        if ($request->file('file')) {
            $fileName = date('d') . date('m') . date('Y') . $this->generateRandomString(15) . '.' . $request->file('file')->getClientOriginalExtension();
            $urlFileUpload  = $request->file('file')->storeAs('assets/user', $fileName, 'public');
        }

        $user->name = $request->input('name');
        $user->email = $request->input('email');
        if ($request->input('password') !== "" && $request->input('password') !== NULL) {
            $user->password = Hash::make($request->input('password'));
        }else{
            $user->password = Hash::make('12345678');
        }
        $user->address = $request->input('address');
        $user->houseNumber = $request->input('houseNumber');
        $user->phoneNumber = $request->input('phoneNumber');
        $user->city = $request->input('city');
        $user->profile_photo_path = $urlFileUpload;

        try {
            $user->save();
            $user = \App\Models\User::find($user->id);

            $response = [
                'meta' => [
                    'code' => 200,
                    'status'   => 'success',
                    'message' => 'data user is successfully created'
                ],
                'data' => $user
            ];
        } catch (Throwable $e) {
            $response = [
                'meta' => [
                    'code' => 400,
                    'status'   => 'error',
                    'message' =>  $e
                ],
                'data' => []
            ];
        }
        return response()->json($response);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
    public function update(Request $request)
    {
        $user = \App\Models\User::find($request->input('id'));

        $urlFileUpload = NULL;

        if ($request->file('file')) {
            $fileName = date('d') . date('m') . date('Y') . $this->generateRandomString(15) . '.' . $request->file('file')->getClientOriginalExtension();
            $urlFileUpload  = $request->file('file')->storeAs('assets/user', $fileName, 'public');
            $user->profile_photo_path = $urlFileUpload;
        }

        $user->name = $request->input('name');
        if ($user->email !== $request->input('email')) {
            $user->email = $request->input('email');
        }

        if ($request->input('password') !== "" && $request->input('password') !== NULL) {
            $user->password = Hash::make($request->input('password'));
        }
        $user->address = is_null($request->input('address')) ? "" : $request->input('address');
        $user->houseNumber = $request->input('houseNumber');
        $user->phoneNumber = $request->input('phoneNumber');
        $user->city = $request->input('city');

        try {
            $user->save();
            $user = \App\Models\User::find($user->id);

            $response = [
                'meta' => [
                    'code' => 200,
                    'status'   => 'success',
                    'message' => 'data user is successfully updated'
                ],
                'data' => $user
            ];
        } catch (Throwable $e) {
            $response = [
                'meta' => [
                    'code' => 400,
                    'status'   => 'error',
                    'message' =>  $e
                ],
                'data' => []
            ];
        }
        return response()->json($response);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = \App\Models\User::find($id);
        try {
            $user->delete();
            $response = [
                'meta' => [
                    'code' => 200,
                    'status'   => 'success',
                    'message' => 'data is successfully deleted'
                ],
                'data' => []
            ];
        } catch (Throwable $e) {
            $response = [
                'meta' => [
                    'code' => 400,
                    'status'   => 'error',
                    'message' => $e
                ],
                'data' => []
            ];
        }

        return response()->json($response);
    }
    function generateRandomString($length = 10)
    {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }
}
