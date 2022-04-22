<?php $v->layout("_theme"); ?>
<main id="checkout">
    <h1>Checkout de finalização</h1>
    <div class="box-conteudo">
        <div class="centro">
        </div>
    </div>
    <div style="clear: both;"></div>
    <div class="titulo">
        <div class="centro">
            <h4>Veja também</h4>
        </div>
    </div>
    <div id="produtos" class="produtos-mini">
        <div class="centro">
            <div class="produtos">
                <?php for($i=1;$i<=5;$i++): ?>
                    <?= $v->insert("inc/product"); ?>
                <?php endfor; ?>
            </div>
        </div>
    </div>
</main>
