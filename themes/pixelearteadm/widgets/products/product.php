<?php $v->layout("_admin"); ?>
<?php $v->insert("widgets/products/sidebar.php"); ?>

<div class="mce_upload" style="z-index: 997">
    <div class="mce_upload_box">
        <form class="app_form" action="<?= url("/admin/products/product"); ?>" method="post" enctype="multipart/form-data">
            <input type="hidden" name="upload" value="true"/>
            <label>
                <label class="legend">Selecione uma imagem JPG ou PNG:</label>
                <input accept="image/*" type="file" name="image" required/>
            </label>
            <button class="btn btn-blue icon-upload">Enviar Imagem</button>
        </form>
    </div>
</div>

<section class="dash_content_app">
    <?php if (!$product): ?>
        <header class="dash_content_app_header">
            <h2 class="icon-plus-circle">Novo Produto</h2>
        </header>

        <div class="dash_content_app_box">
            <form class="app_form" action="<?= url("/admin/products/product"); ?>" method="post">
                <!-- ACTION SPOOFING-->
                <input type="hidden" name="action" value="create"/>

                <label class="label">
                    <span class="legend">*Título:</span>
                    <input type="text" name="title" placeholder="O titulo do produto"
                           required/>
                </label>

                <label class="label">
                    <span class="legend">* Capa: (350x350px)</span>
                    <input type="file" name="image" placeholder="Uma imagem principal" required/>
                </label>
                <label class="label">
                    <span class="legend">*Resumo:</span>
                    <textarea name="details" placeholder="Texto breve sobre o produto"
                              required></textarea>
                </label>

                <label class="label">
                    <span class="legend">*Descrição:</span>
                    <textarea class="mce" name="description"></textarea>
                </label>
                <div class="label_g2">
                    <label class="label">
                        <span class="legend">*Preço:</span>
                        <input type="text" name="price" placeholder="Preço atual do produto"/>
                    </label>

                    <label class="label">
                        <span class="legend">Preço antigo:</span>
                        <input type="text" name="old_price" placeholder="Preço antigo a ser usado como promoção"/>
                    </label>
                </div>
                <div class="label_g2">
                    <label class="label">
                        <span class="legend">*Tamanho:</span>
                        <input type="text" name="size" placeholder="Tamnho da impressão"/>
                    </label>

                    <label class="label">
                        <span class="legend">*Quantidade:</span>
                        <input type="text" name="quantity" placeholder="Quantidade de impressão"/>
                    </label>
                </div>

                <div class="label_g2">
                    <label class="label">
                        <span class="legend">*Categoria:</span>
                        <select name="category" required>
                            <?php foreach ($categories as $category): ?>
                                <option value="<?= $category->id; ?>"><?= $category->title; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </label>
                    <label class="label">
                        <span class="legend">*Status:</span>
                        <select name="status" required>
                            <option value="post">Publicar</option>
                            <option value="draft">Rascunho</option>
                            <option value="trash">Lixo</option>
                        </select>
                    </label>
                </div>
                <div class="al-right">
                    <button class="btn btn-green icon-check-square-o">Cadastrar</button>
                </div>
            </form>
        </div>
    <?php else: ?>
        <header class="dash_content_app_header">
            <h2 class="icon-pencil-square-o">Editar Produto #<?= $product->id; ?></h2>
            <a class="icon-link btn btn-green" href="<?= url("/produto/{$product->uri}"); ?>" target="_blank" title="">Ver no
                site</a>
        </header>

        <div class="dash_content_app_box">
            <form class="app_form" action="<?= url("/admin/products/product/{$product->id}"); ?>" method="post">
                <!-- ACTION SPOOFING-->
                <input type="hidden" name="action" value="update"/>

                <label class="label">
                    <span class="legend">*Título:</span>
                    <input type="text" name="title" value="<?= $product->title; ?>" placeholder="Titulo do produto"
                           required/>
                </label>

                <label class="label">
                    <span class="legend">Capa: (350x350px)</span>
                    <input type="file" name="image" placeholder="Uma imagem principal"/>
                </label>
                <label class="label">
                    <span class="legend">*Resumo:</span>
                    <textarea name="details" placeholder="Texto breve sobre o produto"
                              required><?= $product->details; ?></textarea>
                </label>

                <label class="label">
                    <span class="legend">*Descrição:</span>
                    <textarea class="mce" name="description"><?= $product->description; ?></textarea>
                </label>
                <div class="label_g2">
                    <label class="label">
                        <span class="legend">*Preço:</span>
                        <input type="text" name="price" placeholder="Preço atual do produto" value="<?= $product->price; ?>"/>
                    </label>

                    <label class="label">
                        <span class="legend">Preço antigo:</span>
                        <input type="text" name="old_price" placeholder="Preço antigo a ser usado como promoção" value="<?= $product->old_price; ?>"/>
                    </label>
                </div>
                <div class="label_g2">
                    <label class="label">
                        <span class="legend">*Tamanho:</span>
                        <input type="text" name="size" placeholder="Tamnho da impressão" value="<?= $product->size; ?>"/>
                    </label>

                    <label class="label">
                        <span class="legend">*Quantidade:</span>
                        <input type="text" name="quantity" placeholder="Quantidade de impressão" value="<?= $product->quantity; ?>"/>
                    </label>
                </div>

                <div class="label_g2">
                    <label class="label">
                        <span class="legend">*Categoria:</span>
                        <select name="category" required>
                            <?php foreach ($categories as $category):
                                $categoryId = $product->category;
                                $select = function ($value) use ($categoryId) {
                                    return ($categoryId == $value ? "selected" : "");
                                };
                                ?>
                                <option <?= $select($category->id); ?>
                                        value="<?= $category->id; ?>"><?= $category->title; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </label>
                    <label class="label">
                        <span class="legend">*Status:</span>
                        <select name="status" required>
                            <?php
                            $status = $product->status;
                            $select = function ($value) use ($status) {
                                return ($status == $value ? "selected" : "");
                            };
                            ?>
                            <option <?= $select("post"); ?> value="post">Publicar</option>
                            <option <?= $select("draft"); ?> value="draft">Rascunho</option>
                            <option <?= $select("trash"); ?> value="trash">Lixo</option>
                        </select>
                    </label>
                </div>

                <div class="al-right">
                    <button class="btn btn-blue icon-pencil-square-o">Atualizar</button>
                </div>
            </form>
        </div>
    <?php endif; ?>
</section>