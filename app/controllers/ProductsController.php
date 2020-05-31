<?php

namespace App\Controllers;

use App\Services\CartServiceInterface;
use App\Services\ProductsStorageInterface;

class ProductsController
{
    private const PRODUCTS_COUNT_PER_PAGE = 10;
    /**
     * @var ProductsStorageInterface
     */
    private ProductsStorageInterface $storageService;
    /**
     * @var CartServiceInterface
     */
    private CartServiceInterface $cartService;

    /**
     * ProductsController constructor.
     * @param ProductsStorageInterface $storageService
     * @param CartServiceInterface $cartService
     */
    public function __construct(ProductsStorageInterface $storageService, CartServiceInterface $cartService)
    {
        $this->storageService = $storageService;
        $this->cartService = $cartService;
    }

    /**
     * @param int $page
     * @param string|null $orderBy
     */
    public function getProducts(int $page = 1, ?string $orderBy = null): void
    {
        if ($page == 0) {
            $page = 1;
        }
        $offset = ($page - 1) * self::PRODUCTS_COUNT_PER_PAGE;
        $products = $this->storageService->getProducts($orderBy, $offset, self::PRODUCTS_COUNT_PER_PAGE);
        $productsCount = $this->storageService->getProductsCount();
        $pagesCount = intdiv($productsCount, self::PRODUCTS_COUNT_PER_PAGE);
        if ($productsCount % self::PRODUCTS_COUNT_PER_PAGE) {
            $pagesCount += 1;
        }
        $links = [];
        for ($i = 1; $i <= $pagesCount; $i++) {
            $getParams = [
                'page' => $i,
            ];
            if ($orderBy != null) {
                $getParams['sorting'] = $orderBy;
            }
            $links[] = [
                'url' => sprintf(
                    '%s?%s',
                    $_SERVER['PATH_INFO'],
                    http_build_query($getParams)
                ),
                'current' => $i == $page ? true : false,
            ];
        }
        $title = 'Список всех товаров';
        require_once __DIR__ . '/../views/products.php';
    }

    /**
     * @param int $productId
     */
    public function getProduct(int $productId): void
    {
        $product = $this->storageService->getProductById($productId);
        $title = 'Вывод одного товара';
        require_once __DIR__ . '/../views/product.php';
    }
}
