<?php

namespace App\Services;

use App\Models\Item;
use Illuminate\Support\Facades\Session;

class CartService {
    public static function initCart() {
        if (!Session::has('cart')) {
            Session::put('cart', []);
        }
    }

    private static function formatItem(Item $item) {
        return [
            'id' => $item->id,
            'name' => $item->name,
            'price' => $item->price,
            'image' => $item->cover ? $item->cover : asset('assets/images/no-image.png')
        ];
    }

    public static function add(int $id, int $quantity): void {
        self::initCart();
        $cart = Session::get('cart');
        if (isset($cart[$id])) {
            $cart[$id] += $quantity;
        } else {
            $cart[$id] = $quantity;
        }
        Session::put('cart', $cart);
    }

    public static function remove(int $id, int $quantity): void {
        self::initCart();
        $cart = Session::get('cart');
        if (isset($cart[$id])) {
            $cart[$id] -= $quantity;
            if ($cart[$id] <= 0) {
                unset($cart[$id]);
            }
            Session::put('cart', $cart);
        }
    }

    public static function get(): array {
        self::initCart();
        $cart = Session::get('cart');

        $cartItems = [];
        foreach ($cart as $itemId => $quantity) {
            $item = self::formatItem(Item::find($itemId));
            $cartItems[] = [
                'item' => $item,
                'quantity' => $quantity
            ];
        }

        return $cartItems;
    }

    public static function clear(): void {
        Session::put('cart', []);
    }
}
