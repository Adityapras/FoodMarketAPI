<?php

namespace App\Http\Controllers\API;

use Midtrans\Config;
use Midtrans\Notification;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class MidtransController extends Controller
{
    public function callback(Request $request)
    {
        // midtrans configurations
        Config::$serverKey     = config('services.midtrans.serverKey');
        Config::$isProduction  = config('services.midtrans.isProduction');
        Config::$isSanitized   = config('services.midtrans.isSanitized');
        Config::$is3ds         = config('services.midtrans.is3ds');

        // make instance notification from midtrans 
        $notification = new Notification();

        // assign variable of need to use
        $stastus    = $notification->transaction_status;
        $type       = $notification->payment_type;
        $fraud      = $notification->fraud_status;
        $order_id   = $notification->order_id;

        //search transaction on database
        $transaction = Transaction::findOrFail($order_id);

        //handle notification
        if ($status == 'capture') {
            if ($type == 'credit_card') {
                if ($fraud == 'challenge') {
                    $transaction->status = 'PENDING';
                } else {
                    $transaction->status = 'SUCCESS';
                }
            }
        } else if ($status == 'settlement') {

            $transaction->status = 'SUCCESS';
        } else if ($status == 'penfing') {

            $transaction->status = 'PENDING';
        } else if ($status == 'deny') {

            $transaction->status = 'PENDING';
        } else if ($status == 'expire') {

            $transaction->status = 'CANCELED';
        } else if ($status == 'cancel') {

            $transaction->status = 'CANCELED';
        }

        $transaction->save();
    }

    public function success(Request $request)
    {
        return view('midtrans.success');
    }
    public function unfinish(Request $request)
    {
        return view('midtrans.unfinish');
    }
    public function error(Request $request)
    {
        return view('midtrans.error');
    }
}
