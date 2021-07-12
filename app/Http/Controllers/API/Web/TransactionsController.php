<?php

namespace App\Http\Controllers\API\Web;

use Throwable;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TransactionsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $transaction = \App\Models\Transaction::with(['food', 'user'])->paginate(10);
        return response()->json($transaction);
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
        //
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
        $transaction = \App\Models\Transaction::find($request->input('id'));
        $transaction->status = $request->input('status');
        try {
            $transaction->save();
            $response = [
                'meta' => [
                    'code' => 200,
                    'status'   => 'success',
                    'message' => 'data transactions is successfully updated'
                ],
                'data' => $transaction
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
        $transaction = \App\Models\Transaction::find($id);
        try {
            $transaction->delete();
            $response = [
                'meta' => [
                    'code' => 200,
                    'status'   => 'success',
                    'message' => 'data transaction is successfully deleted'
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
}
