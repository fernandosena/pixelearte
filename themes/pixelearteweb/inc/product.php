<div class="item">
    <a href="<?= url("/produto/{$uri}") ?>">
        <img src="<?= image("{$image}", 239, 239)?>" alt="<?= ($title) ?? null ?>"
             title="<?= ($title) ?? null ?>" width="239" height="239">
        <h2><?= (!empty($title)) ? str_limit_chars($title, 40) : null ?></h2>
    </a>
    <div class="dados">
        <?php if(!empty($old_price)): ?>
        <div class="old_price">
            <p><?= price_symbol(($old_price) ?? 0) ?></p>
        </div>
        <?php endif; ?>
        <div class="price">
            <p><?= $price ?></p>
        </div>
        <div class="btn-grupo">
            <a href="<?= url("/produto/{$uri}") ?>"><button>Comprar</button></a>
        </div>
    </div>
</div>