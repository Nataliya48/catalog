<?php

namespace App\Services;

use App\Models\Product;
use Dotenv\Dotenv;
use PDO;

final class DBStorageService implements ProductsStorageInterface
{
    private const PRODUCTS_COLUMNS = ['id', 'name', 'description', 'img', 'price', 'availability'];
    /**
     * @var DBStorageService|null
     */
    private static ?DBStorageService $instance = null;
    /**
     * @var PDO
     */
    private PDO $pdo;

    /**
     * @return DBStorageService
     */
    public static function getInstance(): DBStorageService
    {
        if (static::$instance === null) {
            static::$instance = new static();
        }

        return static::$instance;
    }

    /**
     * DBStorageService constructor.
     */
    private function __construct()
    {
        $options = [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        ];
        $dotenv = Dotenv::createImmutable(__DIR__ . '/../../');
        $dotenv->load();
        $dsn = sprintf(
            'mysql:host=%s;port=%d;dbname=%s;charset=utf8',
            getenv('MYSQL_HOST'),
            getenv('MYSQL_PORT'),
            getenv('MYSQL_DATABASE')
        );
        $this->pdo = new PDO($dsn, 'root', getenv('MYSQL_ROOT_PASSWORD'), $options);
    }

    /**
     *
     */
    private function __clone()
    {
    }

    /**
     * @param string|null $orderBy
     * @param int $offset
     * @param int $limit
     * @return array
     */
    public function getProducts(?string $orderBy, int $offset, int $limit): array
    {
        if (in_array($orderBy, self::PRODUCTS_COLUMNS)) {
            $sql = sprintf(
                'SELECT * FROM products ORDER BY availability DESC, %s ASC LIMIT %d, %d',
                $orderBy, $offset, $limit
            );
        } else {
            $sql = sprintf(
                'SELECT * FROM products ORDER BY availability DESC LIMIT %d, %d',
                $offset, $limit
            );
        }
        $stmt = $this->pdo->query($sql);
        $stmt->setFetchMode(PDO::FETCH_CLASS, Product::class);
        return $stmt->fetchAll();
    }

    /**
     * @param int $productId
     * @return Product|null
     */
    public function getProductById(int $productId): ?Product
    {
        $stmt = $this->pdo->prepare('SELECT * FROM products WHERE id = :id');
        $stmt->execute(['id' => $productId]);
        $stmt->setFetchMode(PDO::FETCH_CLASS, Product::class);
        return $stmt->fetch();
    }

    /**
     * @return int
     */
    public function getProductsCount(): int
    {
        $stmt = $this->pdo->query('SELECT count(*) FROM products');
        return (int)$stmt->fetchColumn();
    }
}
