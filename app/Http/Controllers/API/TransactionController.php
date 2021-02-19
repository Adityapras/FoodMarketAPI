<?php

namespace App\Http\Controllers\API;

use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Models\Transaction;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Midtrans\Config;
use Midtrans\Snap;


class TransactionController extends Controller
{
    public function all(Request $request)
    {
        $id          = $request->input('id');
        $limit       = $request->input('limit', 6);
        $food_id     = $request->input('food_id');
        $status      = $request->input('status');

        if($id)
        {
            $transaction = Transaction::with(['food','user'])->find($id);

            if ($transaction)
            {
                return ResponseFormatter::success($transaction, 'Data transaction diambil')
            }else{
                return ResponseFormatter::error(null, 'Data transaction tidak ada', 404);
            }
        }

        $transaction = Food::with(['food','user'])->where('user_id', Auth::user()->$id);

        if ($food_id) {
            $transaction->where('food_id', $food_id);
        }

        if ($status) {
            $transaction->where('food_id', $status);
        }

        return ResponseFormatter::success(
            $food->paginate($limit),
            'Data list transaction berhasil di ambil'
        );

    }

    public function update(Request $request)
    {
        $transaction = Transaction::findOrFail($id);

        $transaction->update($request->all());
        return ResponseFormatter::success($transaction, 'Transaksi berhasil di perbarui');
    }

    public function checkout(Request $request)
    {
        $request->validate([
            'food_id' => 'required|exists:food,id',
            'user_id' => 'required|exists:users,id',
            'quantity' => 'required',
            'total' => 'required',
            'status' => 'required'
        ]);

        $transaction = Transaction::create([
            'food_id' => $request->food_id,
            'user_id' => $request->user_id,
            'quantity' => $request->quantity,
            'total' => $request->total,
            'status' => $request->proc_get_status
        ]);

        // midtrans configurations
        Config::$serverKey     = config('services.midtrans.serverKey');
        Config::$isProduction  = config('services.midtrans.isProduction');
        Config::$isSanitized   = config('services.midtrans.isSanitized');
        Config::$is3ds         = config('services.midtrans.is3ds');


        //call transactions 
        $transaction = Transaction::with(['food','user'])->find($transaction->id);

        //make payload for midtrans transactions
        $midtransPayload = [
            'transaction_details' => [
                'order_id' => $transaction->id,
                'gross_amount' => (int) $transaction->total
            ],
            'customer_details' => [
                'first_name' => $transaction->user->name,
                'email' => $transaction->user->email
            ],
            'enabled_payment' => ['gopay', 'bank_transfer'],
            'vtweb' => []
        ];

        //sent payload to midtrans payment gateway
        try {
            
            $paymentUrl = Snap::createTransaction($midtransPayload)->redirect_url;

            $transaction->payment_url = $paymentUrl;
            $transaction->save();

            return ResponseFormatter::success($transaction, 'transaksi berhasil');

        } catch (Exception $e) {
            
            return ResponseFormatter::error($e->getMessage(), 'transaksi gagal');
        }

    }
}
