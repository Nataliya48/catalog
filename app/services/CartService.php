<?php

namespace App\Services;

class CartService implements CartServiceInterface
{
    /**
     * @var ProductsStorageInterface
     */
    private ProductsStorageInterface $storageService;

    /**
     * CartService constructor.
     * @param ProductsStorageInterface $storageService
     */
    public function __construct(ProductsStorageInterface $storageService)
    {
        session_start();
        $this->storageService = $storageService;
        if (!is_array($_SESSION['cart'])) {
            $_SESSION['cart'] = [];
        }
    }

    /**
     * @param int $productId
     * @return string
     */
    public function toggle(int $productId): string
    {
        if (!$this->storageService->getProductById($productId)) {
            $message = 'Товар не найден';

        } elseif ($this->isInCart($productId)) {
            $_SESSION['cart'] = array_diff($_SESSION['cart'], [$productId]);
            $message = 'Добавить в корзину';
        } else {
            $_SESSION['cart'][] = $productId;
            $message = 'Удалить из корзины';
        }
        return $message;
    }

    /**
     * @param int $productId
     * @return bool
     */
    public function isInCart(int $productId): bool
    {
        return in_array($productId, $_SESSION['cart']);
    }
}
