<?php $v->layout("_theme"); ?>
<div id="produtos">
    <div class="centro">
        <div class="filtro">
            <div class="pesquisa">
                <form action="">
                    <input type="text" id="busca" name="q" placeholder="Filtrar:">
                    <button type="submit">
                        <div>
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </div>
                    </button>
                </form>
                <div class="box-filtro">
                    <nav>
                        <ul>
                            <?php
                            if(!empty($categories)):
                                foreach ($categories as $category):
                                    ?>
                                    <a href="<?= url("/categoria/{$category->uri}") ?>"><li><?= $category->title ?></li></a>
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
            ?>
                <?= message()->warning(" Nenhum produto encontrador, volte mais tarde ou tente novamente ")->before("Woops!") ?>
            <?php
                endif;
            ?>
        </div>
    </div>
</div>
