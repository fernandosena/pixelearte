<div class="item">
    <a href="<?= url("/produto/{$uri}") ?>">
        <img src="<?= url("/storage/images/{$image}")?>" alt="" title="">
        <h2><?= ($title) ?? null ?></h2>
    </a>
    <div class="dados">
        <div class="descricao">
            <p><?= ($details) ?? null ?></p>
        </div>
        <?php if(!empty($old_price)): ?>
        <div class="old_price">
            <p><?= price_symbol(($old_price) ?? 0) ?></p>
        </div>
        <?php endif; ?>
        <div class="price">
            <p><?= price_symbol(($price) ?? 0) ?></p>
            <div class="quantidade">
                <label>(<?= ($qtd) ?? 0 ?> unidade)</label>
            </div>
        </div>
        <div class="btn-grupo">
            <a href="<?= url("/carrinho/add/{$id}"); ?>"><button>Adicionar ao carrinho</button></a>
        </div>
    </div>
</div>