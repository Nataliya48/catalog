<?php

namespace App\Controllers;

use App\Services\CartServiceInterface;

class CartController
{
    /**
     * @var CartServiceInterface
     */
    private CartServiceInterface $cartService;

    /**
     * CartController constructor.
     * @param CartServiceInterface $cartService
     */
    public function __construct(CartServiceInterface $cartService)
    {
        $this->cartService = $cartService;
    }

    /**
     * @param $productId
     */
    public function toggle(int $productId): void
    {
        $message = $this->cartService->toggle($productId);
        require_once __DIR__ . '/../views/toggle.php';
    }
}
