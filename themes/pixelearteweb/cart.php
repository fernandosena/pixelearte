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
                ?>
                            <tr>
                                <td>
                                    <a href="<?= url("produto/{$item["uri"]}") ?>">
                                        <img src="<?= url("/storage/images/{$item["image"]}")?>" alt="" title="">
                                        <p><?= $item["title"] ?></p>
                                    </a>
                                </td>
                                <td>
                                    <div class="qtd">
                                        <i class="fa-solid fa-plus" data-id="<?= $item["id"] ?>"></i>
                                        <input type="text" name="qtd" value="<?= $item["qtd"] ?>" max="999" class="value<?= $item["id"] ?>">
                                        <i class="fa-solid fa-minus" data-id="<?= $item["id"] ?>"></i>
                                    </div>
                                </td>
                                <td><?= price_symbol($item["value"]) ?></td>
                                <td><?= price_symbol($item["subtotal"]) ?></td>
                                <td>
                                    <div>
                                        <a href="<?= url("/carrinho/del/{$item["id"]}/all")?>"><i class="fa-solid fa-trash-can"></i> Excluir</a>
                                    </div>
                                </td>
                            </tr>
                <?php
                    endforeach;
                ?>
                    </tbody>
                    <tfoot>
                    <tr>
                        <td colspan="2">Subtotal: R$ 120.00</td>
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
