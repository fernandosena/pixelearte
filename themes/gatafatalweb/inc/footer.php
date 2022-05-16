<!-- Footer -->
<footer class="text-center text-lg-start bg-light text-muted">
    <!-- Section: Social media -->
    <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom" >
        <!-- Left -->
        <div class="me-5 d-none d-lg-block">
            <span>Conecte-se conosco nas redes sociais:</span>
        </div>
        <!-- Left -->

        <!-- Right -->
        <div class="social">
            <a href="https://www.facebook.com/<?= CONF_SOCIAL_FACEBOOK_PAGE ?>" target="_blank" class="me-4 text-reset">
                <i class="fa fa-facebook-official" aria-hidden="true"></i>
            </a>
            <a href="https://twitter.com/<?= CONF_SOCIAL_TWITTER_PUBLISHER ?>" target="_blank" class="me-4 text-reset">
                <i class="fa fa-twitter-square" aria-hidden="true"></i>
            </a>
            <a href="https://www.instagram.com/<?= CONF_SOCIAL_INSTAGRAM_PAGE ?>" target="_blank" class="me-4 text-reset">
                <i class="fa fa-instagram" aria-hidden="true"></i>
            </a>
        </div>
        <!-- Right -->
    </section>
    <!-- Section: Social media -->

    <!-- Section: Links  -->
    <section class="">
        <div class="container text-left text-md-start mt-5">
            <!-- Grid row -->
            <div class="row mt-3">
                <!-- Grid column -->
                <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                    <!-- Content -->
                    <h6 class="text-uppercase fw-bold mb-4">
                        <i class="fas fa-gem me-3"></i> SOBRE O <?= CONF_SITE_NAME ?>
                    </h6>
                    <p>
                        <?= CONF_SITE_DESC ?>
                    </p>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                    <!-- Links -->
                    <h6 class="text-uppercase fw-bold mb-4">
                        links importantes
                    </h6>
                    <p>
                        <a href="<?= url() ?>" class="text-reset">Home</a>
                    </p>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                    <!-- Links -->
                    <h6 class="text-uppercase fw-bold mb-4">
                        Contato
                    </h6>
                    <p><i class="fa fa-map-marker" aria-hidden="true"></i> <?= CONF_SITE_ADDR_STREET ?>
                        Nº <?= CONF_SITE_ADDR_NUMBER ?>,
                        <?= CONF_SITE_ADDR_CITY ?>/<?= CONF_SITE_ADDR_STATE ?> - <?= CONF_SITE_ADDR_ZIPCODE ?></p>
                    <p>
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <?= CONF_SITE_EMAIL["SAC"] ?>
                    </p>
                    <p><i class="fa fa-phone-square" aria-hidden="true"></i> <?= CONF_SITE_PHONE ?></p>
                </div>
                <!-- Grid column -->
            </div>
            <!-- Grid row -->
        </div>
    </section>
    <!-- Section: Links  -->

    <!-- Copyright -->
    <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
        Copyright 2022 © <?= CONF_SITE_NAME ?>.
        <a class="text-reset fw-bold" href="<?= url() ?>"><?= CONF_SITE_DOMAIN ?></a>
    </div>
    <!-- Copyright -->
</footer>
<!-- Footer -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <div class="texto">
                    <i data-dismiss="modal" aria-label="Close" class="fa fa-arrow-left" aria-hidden="true"></i>
                    <h4 class="modal-title">BUSCAR <strong>CIDADE</strong></h4>
                </div>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ...
            </div>
        </div>
    </div>
</div>