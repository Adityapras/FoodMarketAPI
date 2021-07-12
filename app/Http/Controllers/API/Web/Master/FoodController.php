<?php

namespace App\Http\Controllers\API\Web\Master;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Throwable;

class FoodController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $food = \App\Models\Food::paginate(10);
        return response()->json($food);
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
        $food = new \App\Models\Food();
        $urlFileUpload = 'is_empty';

        if ($request->file('file')) {
            $fileName = date('Y-m-d') . '_' . $this->generateRandomString(15) . '.' . $request->file('file')->getClientOriginalExtension();
            $urlFileUpload  = $request->file('file')->storeAs('assets/food', $fileName, 'public');
        }

        $food->name = $request->input('name');
        $food->description = $request->input('description');
        $food->ingredients = $request->input('ingredients');
        $food->price = $request->input('price');
        $food->rate = $request->input('rate');
        $food->types = $request->input('types');


        if ($urlFileUpload === 'is_empty') {
            $response = [
                'meta' => [
                    'code' => 403,
                    'status'   => 'error',
                    'message' => 'file not found !!'
                ],
                'data' => []
            ];
        } else {
            $food->picturePath = $urlFileUpload;
            try {
                $food->save();
                $food = \App\Models\Food::find($food->id);

                $response = [
                    'meta' => [
                        'code' => 200,
                        'status'   => 'success',
                        'message' => 'data is successfully created'
                    ],
                    'data' => $food
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
        $food = \App\Models\Food::find($request->input('id'));
        $urlFileUpload = NULL;

        if ($request->file('file')) {
            $fileName = date('d') . date('m') . date('Y') . $this->generateRandomString(15) . '.' . $request->file('file')->getClientOriginalExtension();
            $urlFileUpload  = $request->file('file')->storeAs('assets/food', $fileName, 'public');
            $food->picturePath = $urlFileUpload;
        }

        $food->name = $request->input('name');
        $food->description = $request->input('description');
        $food->ingredients = $request->input('ingredients');
        $food->price = $request->input('price');
        $food->rate = $request->input('rate');
        $food->types = $request->input('types');

        try {
            $food->save();
            $response = [
                'meta' => [
                    'code' => 200,
                    'status'   => 'success',
                    'message' => 'data is successfully updated'
                ],
                'data' => $food
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

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $food = \App\Models\Food::find($id);
        try {
            $food->delete();
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
