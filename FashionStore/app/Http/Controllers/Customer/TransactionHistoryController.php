<?php

namespace App\Http\Controllers\Customer;

use App\Http\Controllers\Controller;
use Auth;
use App\Models\Transaction;
use App\Models\Order;

class TransactionHistoryController extends Controller
{
    public function myTransaction($customer_id)
    {
        if (Auth::check()) {
            if ($customer_id == Auth::user()->id) {
                $transactions = Transaction::where('customer_id', $customer_id)->orderBy('created_at', 'desc')->paginate(5);
                return view('my_transactions', compact('transactions'));
            }
        }
        return view('404');
    }

    public function myOrder($order_id)
    {
        if (Auth::check()) {
            $customer_id = Auth::user()->id;
            $order = Transaction::where('order_id', $order_id)->where('customer_id', $customer_id)->first();
            if ($order) {
                $order_detail = Order::select('orders.*', 'sizes.name as sizeName', 'colors.name as colorName')
                ->join('products', 'products.id', '=', 'orders.product_id')
                ->join('colors', 'colors.id', '=', 'products.color_id')
                ->join('sizes', 'sizes.id', '=', 'orders.size_id')
                ->where('orders.order_id', $order_id)->where('orders.status', 1)->paginate(5);
                return view('my_orders', compact('order_detail'));
            }
        }
        return view('404');
    }
}
