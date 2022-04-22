<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="mit" content="2019-09-05T13:58:49-03:00+28440">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <?= $head; ?>

    <link rel="icon" type="image/png" href="<?= theme("/assets/img/favicon.png"); ?>"/>
    <link rel="stylesheet" href="<?= theme("/assets/style.css"); ?>"/>
</head>
<body>

<div class="ajax_load">
    <div class="ajax_load_box">
        <div class="ajax_load_box_circle">
            <div class="fa-3x">
                <i class="fa-solid fa-cog fa-spin"></i>
            </div>
        </div>
        <p class="ajax_load_box_title">Aguarde, carregando...</p>
    </div>
</div>

<!--HEADER-->
<?php if(empty($noHeader)): ?>
    <?= $v->insert("views/header"); ?>
<?php endif; ?>
<!--END HEADER-->


<!--CONTENT-->
<?= $v->section("content"); ?>

<?php if(empty($_COOKIE["lgpd"])): ?>
    <div id="cookie" class="tada animated">
        <div class="centro">
            <div>
                <p class="my-auto"><strong>Cookies: </strong>A <?= CONF_SITE_NAME ?> utiliza cookies em seu dispositivo para melhorar
                    a sua experiência na navegação no site e ajudar
                    nas nossas iniciativas de marketing. Ao continuar navegando você concorda com a nossa
                    <a href="<?= url("/politica-de-privacidade")?>" >Política de Privacidade.</a></p>
            </div>
            <div>
                <div class="btn-grupo">
                    <button type="button" class="btn-cookie">CONCORDAR</button>
                </div>
            </div>
        </div>
    </div>
<?php endif ?>

<!--FOOTER-->
<?php if(empty($noFooter)): ?>
    <?= $v->insert("views/footer"); ?>
<?php endif; ?>
<!--END FOOTER-->

<script src="https://kit.fontawesome.com/4ece22f5cd.js" crossorigin="anonymous"></script>
<script src="<?= theme("/assets/scripts.js"); ?>"></script>
<?= $v->section("scripts"); ?>

</body>
</html>