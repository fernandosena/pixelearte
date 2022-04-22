<?php $v->layout("_theme"); ?>

<main id="produto-singular">
    <h1><?= $product->title ?></h1>
    <div class="box-conteudo">
        <div class="centro">
            <div class="images">
                <div class="slider-for">
                    <div>
                        <img src="<?= theme("/assets/img/BannerHome.jpg")?>" alt="" title="">
                    </div>
                    <div>
                        <img src="<?= theme("/assets/img/BannerHome.jpg")?>" alt="" title="">
                    </div>
                    <div>
                        <img src="<?= theme("/assets/img/BannerHome.jpg")?>" alt="" title="">
                    </div>
                    <div>
                        <img src="<?= theme("/assets/img/BannerHome.jpg")?>" alt="" title="">
                    </div>
                    <div>
                        <img src="<?= theme("/assets/img/BannerHome.jpg")?>" alt="" title="">
                    </div>
                </div>
                <div class="slider slider-nav">
                    <div>
                        <img src="<?= theme("/assets/img/BannerHome.jpg")?>" alt="" title="">
                    </div>
                    <div>
                        <img src="<?= theme("/assets/img/BannerHome.jpg")?>" alt="" title="">
                    </div>
                    <div>
                        <img src="<?= theme("/assets/img/BannerHome.jpg")?>" alt="" title="">
                    </div>
                    <div>
                        <img src="<?= theme("/assets/img/BannerHome.jpg")?>" alt="" title="">
                    </div>
                    <div>
                        <img src="<?= theme("/assets/img/BannerHome.jpg")?>" alt="" title="">
                    </div>
                </div>
            </div>
            <form action="<?= url("/carrinho/add/{$product->id}")?>" method="post">
                <input type="hidden" name="type" value="add">
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
                                <i class="fa-solid fa-plus" data-id="<?= $product->id ?>"></i>
                                <input type="text" name="qtd" value="1" min="1" max="999" class="value<?= $product->id ?>">
                                <i class="fa-solid fa-minus" data-id="<?= $product->id ?>"></i>
                            </div>
                        </div>
                    </div>
                    <div class="observacoes">
                        <div>
                            <label>Observações:</label>
                            <textarea placeholder="Observações" name="observation"></textarea>
                        </div>
                    </div>
                    <div class="total">
                        <div>
                            <label>Total: R$ 40,00</label>
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
