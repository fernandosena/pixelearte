<?php $v->layout("_admin"); ?>
<?php $v->insert("widgets/products/sidebar.php"); ?>

<section class="dash_content_app">
    <header class="dash_content_app_header">
        <h2 class="icon-pencil-square-o">Produtos</h2>
        <form action="<?= url("/admin/blog/home"); ?>" method="post" class="app_search_form">
            <input type="text" name="s" value="<?= $search; ?>" placeholder="Pesquisar Produto:">
            <button class="icon-search icon-notext"></button>
        </form>
    </header>

    <div class="dash_content_app_box">
        <section>
            <div class="app_blog_home">
                <?php if (!$products): ?>
                    <div class="message info icon-info">Ainda não existem produtos cadastrados no sistema.</div>
                <?php else: ?>
                    <?php foreach ($products as $product):
                        $productCover = ($product->image ? image($product->image, 300) : "");
                        ?>
                        <article>
                            <div style="background-image: url(<?= $productCover; ?>);"
                                 class="cover embed radius"></div>
                            <h3 class="tittle">
                                <a target="_blank" href=" <?= url("/produto/{$product->uri}"); ?>">
                                    <?php if ($product->created_at > date("Y-m-d H:i:s")): ?>
                                        <span class="icon-clock-o"><?= str_limit_chars($product->title, 20) ?></span>
                                    <?php else: ?>
                                        <span class="icon-check"><?= str_limit_chars($product->title, 20) ?></span>
                                    <?php endif; ?>
                                </a>
                            </h3>

                            <div class="info">
                                <p class="icon-clock-o"><?= str_limit_chars($product->details, 80) ?></p>
                                <p class="icon-bar-chart"><?= $product->views; ?></p>
                            </div>

                            <div class="actions">
                                <a class="icon-pencil btn btn-blue" title=""
                                   href="<?= url("/admin/products/product/{$product->id}"); ?>">Editar</a>

                                <a class="icon-trash-o btn btn-red" title="" href="#"
                                   data-post="<?= url("/admin/products/product"); ?>"
                                   data-action="delete"
                                   data-confirm="Tem certeza que deseja deletar esse produto?"
                                   data-product_id="<?= $product->id; ?>">Deletar</a>
                            </div>
                        </article>
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>

            <?= $paginator; ?>
        </section>
    </div>
</section>