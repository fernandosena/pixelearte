<?php $v->layout("_admin"); ?>
<?php $v->insert("widgets/products/sidebar.php"); ?>

<section class="dash_content_app">
    <header class="dash_content_app_header">
        <h2 class="icon-comments-o">Categorias</h2>
        <a class="icon-plus-circle btn btn-green" href="<?= url("/admin/products/category"); ?>">Nova Categoria</a>
    </header>

    <div class="dash_content_app_box">
        <section>
            <div class="app_faqs_home">
                <?php if (!$categories): ?>
                    <div class="message info icon-info">Ainda não existem categorias cadastradas.</div>
                <?php else: ?>
                    <?php foreach ($categories as $categorie): ?>
                        <article class="radius">
                            <header>
                                <h3><?= $categorie->title; ?></h3>
                                <p><?= $categorie->description; ?></p>
                                <div>
                                    <a href="<?= url("/admin/products/category/{$categorie->id}"); ?>"
                                       class="icon-pencil btn btn-blue">Editar Categoria</a>
                                </div>
                                <a href="<?= url("/admin/products/subcategory/{$categorie->id}"); ?>"
                                   class="icon-plus-circle btn btn-green">Nova Subcategoria</a>
                            </header>
                            <div>
                                <?php
                                $categorieId = $categorie->id;
                                $edit = function ($id) use ($categorieId) {
                                    $url = url("/admin/products/subcategory/{$categorieId}/{$id}");
                                    return "<a href=\"{$url}\" class=\"btn btn-blue icon-pencil icon-notext\"></a>";
                                };
                                ?>

                                <?php if (!$categorie->subcategory()->count()): ?>
                                    <div class="message info icon-info al-center">
                                        Ainda não existem subcategorias
                                    </div>
                                <?php else: ?>
                                    <?php foreach ($categorie->subcategory()->fetch(true) as $question): ?>
                                        <div class="question radius">
                                            <?= $edit($question->id); ?> - <?= $question->title; ?>
                                        </div>
                                    <?php endforeach; ?>

                                <?php endif; ?>
                            </div>
                        </article>
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>

            <?= $paginator; ?>
        </section>
    </div>
</section>