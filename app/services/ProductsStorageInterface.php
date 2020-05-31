<?php

namespace App\Services;

use App\Models\Product;

interface ProductsStorageInterface
{
    /**
     * @param string|null $orderBy
     * @param int $offset
     * @param int $limit
     * @return array
     */
    public function getProducts(?string $orderBy, int $offset, int $limit): array;

    /**
     * @param int $productId
     * @return Product|null
     */
    public function getProductById(int $productId): ?Product;

    /**
     * @return int
     */
    public function getProductsCount(): int;
}
