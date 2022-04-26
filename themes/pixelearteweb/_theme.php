<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="pt-br"> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8" lang="pt-br"> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9" lang="pt-br"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="pt-br"> <!--<![endif]-->
<head>
    <meta charset="UTF-8">
    <meta name="mit" content="2022-04-23T13:58:49-03:00+28440">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="facebook-domain-verification" content="k76pdhc5f8j82b40kg5mo0ds6i03dv" />
    <?= $head; ?>
    <link rel="icon" type="image/png" href="<?= url("/storage/images/favicon.png"); ?>"/>
    <link rel="stylesheet" href="<?= theme("/assets/style.css"); ?>"/>
    <!-- Meta Pixel Code -->
    <script>
        !function(f,b,e,v,n,t,s)
        {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
            n.callMethod.apply(n,arguments):n.queue.push(arguments)};
            if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
            n.queue=[];t=b.createElement(e);t.async=!0;
            t.src=v;s=b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t,s)}(window, document,'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '703560004327986');
        fbq('track', 'PageView');
    </script>
    <noscript><img height="1" width="1" style="display:none"
                   src="https://www.facebook.com/tr?id=703560004327986&ev=PageView&noscript=1"
        /></noscript>
    <!-- End Meta Pixel Code -->
    <!-- Global site tag (gtag.js) - Google Ads: 10891322072 -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-10891322072"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'AW-10891322072');
    </script>
</head>
<body>
<?php if (!empty($track)): ?>
    <?php $v->start("scripts"); ?>
    <script>
        fbq('track', '<?= $track->fb;?>');
        gtag('event', 'conversion', {'send_to': '<?= $track->aw;?>'});
    </script>
    <?php $v->end(); ?>
<?php endif; ?>
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