<?php $v->layout("_admin"); ?>
<?php $v->insert("widgets/products/sidebar.php"); ?>

<section class="dash_content_app">
    <?php if (!$subcategory): ?>
        <header class="dash_content_app_header">
            <h2 class="icon-plus-circle">Nova Subcategoria</h2>
        </header>

        <div class="dash_content_app_box">
            <form class="app_form" action="<?= url("/admin/products/subcategory/{$category->id}"); ?>" method="post">
                <!--ACTION SPOOFING-->
                <input type="hidden" name="action" value="create"/>

                <label class="label">
                    <span class="legend">*Título:</span>
                    <input type="text" name="title" placeholder="O nome da subcategoria" required/>
                </label>

                <label class="label">
                    <span class="legend">*Descrição:</span>
                    <textarea name="description" placeholder="Sobre esta subcategoria" required></textarea>
                </label>

                <label class="label">
                    <span class="legend">Capa: (<?= CONF_IMAGE_MINIMU_SIZE["width"]."x".CONF_IMAGE_MINIMU_SIZE["height"] ?>)</span>
                    <input type="file" name="image" placeholder="Uma imagem de capa"/>
                </label>

                <div class="al-right">
                    <button class="btn btn-green icon-check-square-o">Cadastrar</button>
                </div>
            </form>
        </div>
    <?php else: ?>
        <header class="dash_content_app_header">
            <h2 class="icon-pencil-square-o">Editar Subcategoria</h2>
            <a href="<?= url("/admin/products/subcategory/{$category->id}"); ?>"
               class="icon-plus-circle btn btn-green">Nova Subcategoria</a>
        </header>

        <div class="dash_content_app_box">
            <form class="app_form" action="<?= url("/admin/products/subcategory/{$category->id}/{$subcategory->id}"); ?>"
                  method="post">
                <!--ACTION SPOOFING-->
                <input type="hidden" name="action" value="update"/>

                <label class="label">
                    <span class="legend">*Título:</span>
                    <input type="text" name="title" placeholder="O nome da subcategoria" value="<?= $subcategory->title ?>" required/>
                </label>

                <label class="label">
                    <span class="legend">*Descrição:</span>
                    <textarea name="description" placeholder="Sobre esta subcategoria" required><?= $subcategory->description ?></textarea>
                </label>

                <label class="label">
                    <span class="legend">Capa: (<?= CONF_IMAGE_MINIMU_SIZE["width"]."x".CONF_IMAGE_MINIMU_SIZE["height"] ?>)</span>
                    <input type="file" name="image" placeholder="Uma imagem de capa"/>
                </label>

                <div class="app_form_footer">
                    <button class="btn btn-blue icon-check-square-o">Atualizar</button>
                    <a href="#" class="remove_link icon-error"
                       data-post="<?= url("/admin/products/subcategory/{$category->id}/{$subcategory->id}"); ?>"
                       data-action="delete"
                       data-confirm="Tem certeza que deseja excluir essa subcategoria"
                       data-question_id="<?= $subcategory->id; ?>">Excluir Subcategoria</a>
                </div>
            </form>
        </div>
    <?php endif; ?>
</section>