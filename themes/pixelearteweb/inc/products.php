<div id="produtos">
    <div class="centro">
        <div class="filtro">
            <div class="pesquisa">
                <form action="<?= url("/produtos/categoria")?>" method="post">
                    <input type="text" id="busca" name="s" placeholder="Filtrar:">
                    <button type="submit">
                        <div>
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </div>
                    </button>
                </form>
                <div class="box-filtro">
                    <nav>
                        <ul id="ul-categoria">
                            <?php
                                if(!empty($categories)):
                                    foreach ($categories as $category):
                            ?>
                                <a href="<?= url("/produtos/categoria/{$category->uri}") ?>"><li><?= $category->title ?></li></a>
                            <?php
                                    endforeach;
                                endif;
                            ?>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="produtos">
            <?php
                if(!empty($products)):
                    foreach($products as $product):
            ?>
                <?= $v->insert("inc/product", [
                        "id" => $product->id,
                        "image" => $product->image,
                        "title" => $product->title,
                        "uri" => $product->uri,
                        "details" => $product->details,
                        "qtd" => $product->quantity,
                        "old_price" => $product->old_price,
                        "price" => $product->price,
                    ]); ?>
            <?php
                    endforeach;
                else:
                    echo message()->success("Nenhum produto ainda cadastrado, estamos trabalhando nisso, aguarde...");
                endif;
            ?>
        </div>
    </div>
</div>