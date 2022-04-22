<?php $v->layout("_theme"); ?>
<div id="banner-principal">
        <div class="slider item-unico">
            <?php
                for($i=1;$i <= 10; $i++):
            ?>
            <div>
                <a href="">
                    <img src="<?= theme("/assets/img/BannerHome.jpg")?>" alt="" title="">
                </a>
            </div>
            <?php endfor; ?>
        </div>
</div>
<div id="info">
    <div class="centro">
        <div>
            <img src="<?= theme("/assets/img/telefonia.png"); ?>"
            <label>Atendimento cordial e eficaz
                e monitoramento de produção</label>
        </div>
        <div>
            <img src="<?= theme("/assets/img/car.png"); ?>"
            <label>Frete grátis em qualquer
                pedido e para todo Brasil</label>
        </div>
        <div>
            <img src="<?= theme("/assets/img/qualidade.png"); ?>"
            <label>Alta qualidade em
                impressão Offset</label>
        </div>
    </div>
</div>
<div id="banner-categoria">
    <div class="centro">
        <div class="slider categorias">
            <?php
                for($i=1;$i <= 10; $i++):
            ?>
                <div>
                    <a href="">
                        <img src="<?= theme("/assets/img/carrossel01.jpg")?>" alt="" title="">
                        <h3>Categoria</h3>
                    </a>
                </div>
            <?php endfor; ?>
        </div>
    </div>
</div>
<main>
    <?= $v->insert("inc/products"); ?>
</main>