<?php require_once __DIR__ . '/header.php'; ?>
<a href="/">Главная</a>
<br>
<hr>
<div class="container">
    <div class="box">
        <div><img src="<?= $product->getImg(); ?>" height="150"><br></div>
        <div><?= $product->getName(); ?><br>
            <?= $product->getDescription(); ?><br>
            <?= $product->getPrice(); ?>р.<br>
            <?= $product->getAvailability() ? 'Есть ' : 'Нет '; ?> в наличии<br>
            <button id="<?= $product->getId(); ?>">
                <?= $this->cartService->isInCart($product->getId()) ? 'Удалить из корзины' : 'Добавить в корзину' ?>
            </button>
            <br>
        </div>
    </div>
</div>
<hr>
<br>
<?php require_once __DIR__ . '/footer.php'; ?>
