<?php

namespace App\Services;

interface CartServiceInterface
{
    /**
     * @param int $productId
     * @return string
     */
    public function toggle(int $productId): string;

    /**
     * @param int $productId
     * @return bool
     */
    public function isInCart(int $productId): bool;
}
