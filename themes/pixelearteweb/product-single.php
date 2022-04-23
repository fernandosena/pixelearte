<?php $v->layout("_theme"); ?>

<main id="produto-singular">
    <h1><?= $product->title ?></h1>
    <div class="box-conteudo">
        <div class="centro">
            <div class="images">
                <div class="slider-for">
                    <?php for($i=1;$i<=5;$i++): ?>
                    <div>
                        <img src="<?= url("/storage/images/2022/04/produto01.jpg") ?>" alt="" title="">
                    </div>
                    <?php endfor; ?>
                </div>
                <div class="slider slider-nav">
                    <?php for($i=1;$i<=5;$i++): ?>
                        <div>
                            <img src="<?= url("/storage/images/2022/04/produto01.jpg") ?>" alt="" title="">
                        </div>
                    <?php endfor; ?>
                </div>
            </div>
            <form action="<?= url("/carrinho/add")?>" method="post">
                <input type="hidden" name="type" value="add">
                <input type="hidden" name="id" value="<?= $product->id ?>">
                <div class="conteudo">
                    <div class="detalhes">
                        <div>
                            <label>REF</label>
                            <p>#REF-<?= $product->id ?></p>
                        </div>
                        <div>
                            <label>Detalhes:</label>
                            <p><?= $product->details ?></p>
                        </div>
                        <div>
                            <p></p>
                            <p>Por apenas</p>
                        </div>
                        <div>
                            <p></p>
                            <p><?= price_symbol($product->price) ?></p>
                        </div>
                    </div>
                    <div class="quantidade">
                        <div>
                            <label>Quantidade:</label>
                            <div class="qtd">
                                <i class="fa-solid fa-plus"
                                   data-id="<?= $product->id ?>"
                                   data-value="<?= $product->id ?>"
                                   data-url="<?= url("/carrinho/calc"); ?>"
                                   data-type="add"
                                ></i>
                                <input type="text" readonly name="qtd" value="1" min="1" max="999" class="value<?= $product->id ?>">
                                <i class="fa-solid fa-minus"
                                   data-id="<?= $product->id ?>"
                                   data-url="<?= url("/carrinho/calc"); ?>"
                                   data-type="del"></i>
                            </div>
                        </div>
                    </div>
                    <div class="observacoes">
                        <div>
                            <label>Observações:</label>
                            <textarea placeholder="Observações" name="observation"></textarea>
                        </div>
                    </div>
                    <div class="valor-total">
                        <div>
                            <label>Total: <span class="subtotal<?= $product->id ?>"><?= price_symbol($product->price) ?></span></label>
                            <div class="btn-grupo">
                                <button><i class="fa-solid fa-bag-shopping"></i> Adicionar ao carrinho</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
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
