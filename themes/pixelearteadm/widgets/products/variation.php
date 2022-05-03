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
        <header class="dash_content_app_header">
            <h2 class="icon-plus-circle">Nova variação de produto</h2>
        </header>
        <div class="dash_content_app_box">
            <form class="app_form" action="<?= url("/admin/products/variation"); ?>" method="post">
                <!-- ACTION SPOOFING-->
                <input type="hidden" name="action" value="create"/>
                <input type="hidden" name="id" value="<?= $product->id?>"/>
                <div class="label_g2">
                    <label class="label">
                        <span class="legend">Impressão:</span>
                        <select name="print">
                            <option value="" selected>Selecione uma impressão</option>
                            <?php foreach ($impressions as $impression): ?>
                                <option value="<?= $impression->id; ?>"><?= $impression->title; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </label>
                    <label class="label">
                        <span class="legend">Material:</span>
                        <select name="material">
                            <option value="" selected>Selecione um material</option>
                            <?php foreach ($materials as $material): ?>
                                <option value="<?= $material->id; ?>"><?= $material->title; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </label>
                </div>
                <div class="label_g2">
                    <label class="label">
                        <span class="legend">Quantidade:</span>
                        <select name="quantity">
                            <option value="" selected>Selecione uma impressão</option>
                            <?php foreach ($quantities as $quantity): ?>
                                <option value="<?= $quantity->id; ?>"><?= $quantity->value; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </label>
                    <label class="label">
                        <span class="legend">Quantidade:</span>
                        <input type="text" class="money" placeholder="Valor da variação" name="price">
                    </label>
                </div>
                <div class="al-right">
                    <button class="btn btn-green icon-check-square-o">Cadastrar</button>
                </div>
            </form>
        </div>
</section>