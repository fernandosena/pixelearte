<?php $v->layout("_theme"); ?>

<main id="produto-singular">
    <h1><?= $product->title ?></h1>
    <div class="box-conteudo">
        <div class="centro">
            <div class="images">
                <div class="slider-for">
                    <?php if(!$product->images()): ?>
                        <div>
                            <img src="<?= image($product->image, 350) ?>" alt="<?= $product->title ?>" title="<?= $product->title ?>">
                        </div>
                    <?php else: ?>
                        <?php for($i=1;$i<=5;$i++): ?>
                        <div>
                            <img src="<?= url("/storage/images/2022/04/produto01.jpg") ?>" alt="" title="">
                        </div>
                        <?php endfor; ?>
                    <?php endif; ?>
                </div>
                <div class="slider slider-nav">
                    <?php if($product->images()): ?>
                        <?php for($i=1;$i<=5;$i++): ?>
                            <div>
                                <img src="<?= url("/storage/images/2022/04/produto01.jpg") ?>" alt="" title="">
                            </div>
                        <?php endfor; ?>
                    <?php endif; ?>
                </div>
            </div>
            <form class="form" action="<?= url("/carrinho/add")?>" method="post">
                <input type="hidden" name="type" value="add">
                <input type="hidden" name="id" class="id" value="<?= $product->id ?>">
                <input type="hidden" name="variation" class="variation">
                <div class="conteudo">
                    <div class="quantidade">
                        <div>
                            <span>Material</span>
                            <select name="material_id" class="select" required>
                                <option value="">Selecione um material</option>
                                <?php
                                    foreach ($product->variation()["material"] as $materialKey => $materialValue):
                                ?>
                                        <option value="<?= $materialKey ?>"><?= $materialValue ?></option>
                                <?php
                                    endforeach;
                                ?>
                            </select>
                        </div>
                        <div>
                            <span>Impressão</span>
                            <select name="print_id" class="select" required>
                                <option value="">Selecione uma impressão</option>
                                <?php
                                    foreach ($product->variation()["print"] as $printKey => $printValue):
                                ?>
                                        <option value="<?= $printKey ?>"><?= $printValue ?></option>
                                <?php
                                    endforeach;
                                ?>
                            </select>
                        </div>
                        <div>
                            <span>Quantidade</span>
                            <div class="radio">
                                <?php
                                    foreach ($product->variation()["quantity"] as $quantityKey => $quantityValue):
                                ?>
                                    <label>
                                        <input required type="radio" name="quantity_id" class="select" value="<?= $quantityKey ?>"><?= $quantityValue ?> Uni.</input>
                                    </label>
                                <?php
                                    endforeach;
                                ?>
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
    <?php if(!empty($relateds)): ?>
    <div class="titulo">
        <div class="centro">
            <h4>Veja também</h4>
        </div>
    </div>
    <div id="produtos" class="produtos-mini">
        <div class="centro">
            <div class="produtos">
                <?php foreach ($relateds as $related): ?>
                    <?= $v->insert("inc/product", [
                        "id" => $related->id,
                        "title" => $related->title,
                        "uri" => $related->uri,
                        "image" => $related->image,
                        "old_price" => $related->old_price,
                        "price" => $related->price,
                        "qtd" => $related->quantity,
                    ]); ?>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
    <?php endif; ?>
</main>
