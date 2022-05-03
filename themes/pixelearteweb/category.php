<?php $v->layout("_theme"); ?>
<div id="produtos">
    <h1><?= $title ?></h1>
    <div class="centro">
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
                    "old_price" => $product->old_price,
                    "price" => price_symbol($product->variationPrice()->min)." - ".price_symbol($product->variationPrice()->max),
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
