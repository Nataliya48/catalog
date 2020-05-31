<?php

use App\Controllers\CartController;
use App\Controllers\ProductsController;
use App\Services\CartService;
use App\Services\DBStorageService;

require_once __DIR__ . '/../vendor/autoload.php';

try {
    $storageService = DBStorageService::getInstance();
    $cartService = new CartService($storageService);
    $productController = new ProductsController($storageService, $cartService);
    $uri = $_SERVER['REQUEST_URI'];
    if (preg_match('/\/products/i', $uri)) {
        $page = (int)$_GET['page'];
        $orderBy = (string)$_GET['sorting'];
        $productController->getProducts($page, $orderBy);
        return;
    }
    if (preg_match('/\/product\/(\d+)/i', $uri, $matches)) {
        $productId = (int)$matches[1];
        $productController->getProduct($productId);
        return;
    }
    if (preg_match('/\/cart\/toggle\/(\d+)/i', $uri, $matches)) {
        $productId = (int)$matches[1];
        $cartController = new CartController($cartService);
        $cartController->toggle($productId);
        return;
    }
    header('Location: /products');
} catch (\Throwable $e) {
    echo $e->getMessage();
}
