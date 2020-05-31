<?php require_once __DIR__ . '/header.php'; ?>

<div class="container">
    <div class="box">
        <div><?= $orderBy == null ? '<b>' : ''; ?>
            <a href="/products">Список товаров</a>
            <?= $orderBy == null ? '</b>' : ''; ?></div>

        <div><?= $orderBy == 'name' ? '<b>' : ''; ?>
            <a href="/products?sorting=name">Сортировать по названию</a>
            <?= $orderBy == 'name' ? '</b>' : ''; ?></div>

        <div><?= $orderBy == 'price' ? '<b>' : ''; ?>
            <a href="/products?sorting=price">Сортировать по цене</a>
            <?= $orderBy == 'price' ? '</b>' : ''; ?></div>
    </div>
</div>
<br>
<div class="container">
    <div class="box">
        <hr>
        <?php foreach ($products as $product): ?>
            <div><img src="<?= $product->getImg(); ?>" height="150"><br></div>
            <div><a href="/product/<?= $product->getId(); ?>"><?= $product->getName(); ?><br></a>
                <?= $product->getDescription(); ?><br>
                <?= $product->getPrice(); ?>р.<br>
                <?= $product->getAvailability() ? 'Есть ' : 'Нет '; ?> в наличии<br>
                <button id="<?= $product->getId(); ?>">
                    <?= $this->cartService->isInCart($product->getId()) ? 'Удалить из корзины' : 'Добавить в корзину' ?>
                    <br>
                </button>
            </div>
            <br>
            <hr>
        <?php endforeach; ?>
    </div>
</div>
<?php foreach ($links as $key => $link): ?>
    <?= $link['current'] ? '<b>' : ''; ?>
    <a href="<?= $link['url']; ?>"><?= $key + 1; ?></a>
    <?= $link['current'] ? '</b>' : ''; ?>
<?php endforeach; ?>
<br>
<br>
<?php require_once __DIR__ . '/footer.php'; ?>
