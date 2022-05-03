<?php $v->layout("_theme"); ?>
<main id="checkout">
    <h1>Checkout de finalização</h1>
    <div class="centro">
        <form action="<?= url("/checkout") ?>" method="post">
            <div>
                <h2>Suas informações</h2>
                    <div class="card">
                        <label>Informações pessoais</label>
                        <div class="form_group">
                            <div>
                                <label>Nome*</label>
                                <input type="text" name="first_name" placeholder="Nome" required>
                            </div>
                            <div>
                                <label>Sobrenome*</label>
                                <input type="text" name="last_name" placeholder="Sobrenome" required>
                            </div>
                        </div>
                        <div class="form_group">
                            <div>
                                <label>E-mail*</label>
                                <input type="email" name="email" placeholder="E-mail" required>
                            </div>
                        </div>
                        <div class="form_group">
                            <div>
                                <label>Whatsapp*</label>
                                <input type="text" name="whatsapp" placeholder="Whatsapp" required>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <label>Informações de entrega</label>
                        <div class="form_group">
                            <div>
                                <label>Estado</label>
                                <input type="text" name="estado" placeholder="Estado">
                            </div>
                            <div>
                                <label>Cidade</label>
                                <input type="text" name="cidade" placeholder="Cidade">
                            </div>
                        </div>
                        <div class="form_group">
                            <div>
                                <label>CEP*</label>
                                <input type="text" name="cep" placeholder="CEP" required>
                            </div>
                            <div>
                                <label>Número*</label>
                                <input type="text" name="numero" placeholder="Número" required>
                            </div>
                        </div>
                        <div class="form_group">
                            <div>
                                <label>Endereço</label>
                                <input type="text" name="endereco" placeholder="Endereço">
                            </div>
                        </div>
                    </div>
            </div>
            <div class="resumo">
                <h2>Resumo</h2>
                <div class="box-resumo">
                    <p><?= date_fmt("NOW", "d/m/Y à\s H:i:s")?></p>
                    <h2>gráfica <?= CONF_SITE_NAME ?></h2>
                    <table>
                        <thead>
                            <tr>
                                <th>Desc.</th>
                                <th>Qtd.</th>
                                <th>Vlr.</th>
                                <th>Subtotal</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($_SESSION["compras"]["carrinho"] as $compras): ?>
                                <?php
                                    $variation = (new \Source\Models\Product\ProductVariation())->findById($compras["variation"]);
                                ?>
                                <tr>
                                    <td><?= "{$variation->quantity()[0]->value} - {$compras["title"]}" ?></td>
                                    <td><?= $compras["qtd"] ?></td>
                                    <td><?= price_symbol($compras["value"]) ?></td>
                                    <td><?= price_symbol($compras["subtotal"]) ?></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                    <div class="detalhes">
                        <label>Subtotal: <span><?= price_symbol($_SESSION["compras"]["total"]) ?></span></label>
                        <label>Taxa de Entrega: <span><?= price_symbol(0) ?></span></label>
                        <label>Total: <span><?= price_symbol($_SESSION["compras"]["total"]) ?></span></label>
                    </div>
                </div>
                <p class="info">O seu pedido será enviado para o nosso Whatsapp</p>
                <div class="btn-grupo">
                    <a href="<?= url("/checkout") ?>"><button><i class="fa-brands fa-whatsapp"></i> Enviar apara o whatsapp</button></a>
                </div>
            </div>
        </form>
    </div>
</main>
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
