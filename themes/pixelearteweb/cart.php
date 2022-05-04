<?php $v->layout("_theme"); ?>
<main id="carrinho">
    <div class="tabela">
        <div class="centro">
            <h1>Carrinho</h1>
            <div class="lista-itens">
                <?php
                    if(!empty($products)):
                ?>
                <table>
                    <thead>
                        <tr>
                            <th>Titulo</th>
                            <th>Qtdn</th>
                            <th>Valor Unit.</th>
                            <th>Subtotal</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                <?php
                        foreach ($products as $item):
                            $variation = (new \Source\Models\Product\ProductVariation())->findById($item["variation"]);
                ?>
                            <tr>
                                <td>
                                    <a href="<?= url("produto/{$item["uri"]}") ?>">
                                        <img src="<?= image($item["image"], 150)?>" alt="" title="">
                                        <p><?= "{$variation->quantity()[0]->value} {$item["title"]}" ?></p>
                                    </a>
                                </td>
                                <td>
                                    <div class="qtd">
                                        <i class="fa-solid fa-plus"
                                           data-id="<?= $variation->id ?>"
                                           data-value="<?= $variation->id ?>"
                                           data-url="<?= url("/carrinho/calc"); ?>"
                                           data-type="add"
                                           data-save="true"></i>
                                        <input type="text" readonly name="qtd" value="<?= $item["qtd"] ?>" min="1" max="999" class="value<?= $variation->id ?>">
                                        <i class="fa-solid fa-minus"
                                           data-id="<?= $variation->id ?>"
                                           data-url="<?= url("/carrinho/calc"); ?>"
                                           data-type="del"
                                           data-save="true"></i>
                                    </div>
                                </td>
                                <td><?= price_symbol($item["value"]) ?></td>
                                <td><label class="subtotal<?= $variation->id ?>"><?= price_symbol($item["subtotal"]) ?></label></td>
                                <td>
                                    <div>
                                        <a href="<?= url("/carrinho/del/{$variation->id}/all")?>"><i class="fa-solid fa-trash-can"></i> Excluir</a>
                                    </div>
                                </td>
                            </tr>
                <?php
                    endforeach;
                ?>
                    </tbody>
                    <tfoot>
                    <tr>
                        <?php
                            $_SESSION["calculo"] = $_SESSION["compras"]["total"];
                        ?>
                        <td colspan="2">Subtotal: <span class="total"><?= price_symbol($_SESSION["compras"]["total"]) ?></span></td>
                        <td colspan="3" class="btn-grupo">
                            <a href="<?= url("/checkout") ?>"><button>Finalizar compra</button></a>
                        </td>
                    </tr>
                    </tfoot>
                </table>
                <?php
                    else:
                        echo message()->success("Não existe produtos em seu carrinho<br>")
                            ->before("<div class='sem-produto'>")
                            ->after("<div class='btn-grupo'><button><a href='".url("/produtos")."'>Adicionar produto</a></button></div></div>");
                    endif;
                ?>
            </div>
        </div>
    </div>
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
                        "image" => $related->image,
                        "title" => $related->title,
                        "uri" => $related->uri,
                        "details" => $related->details,
                        "old_price" => $related->old_price,
                        "price" => price_symbol($related->variationPrice()->min)." - ".price_symbol($related->variationPrice()->max),
                    ]); ?>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
    <?php endif; ?>
</main>
