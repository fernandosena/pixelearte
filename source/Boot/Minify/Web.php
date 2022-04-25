<?php
if (strpos(url(), "localhost")) {
    /**
     * CSS
     */
    $minCSS = new MatthiasMullie\Minify\CSS();
    //SAHARED
    $minCSS->add(__DIR__ . "/../../../shared/plugins/slick-1.8.1/slick/slick.css");
    $minCSS->add(__DIR__ . "/../../../shared/plugins/slick-1.8.1/slick/slick-theme.css");

    //THEME
    $minCSS->add(__DIR__ . "/../../../themes/" . CONF_VIEW_THEME . "/assets/css/style.css");

    //Minify CSS
    $minCSS->minify(__DIR__ . "/../../../themes/" . CONF_VIEW_THEME . "/assets/style.css");

    /**
     * JS
     */
    $minJS = new MatthiasMullie\Minify\JS();

    //SAHARED
    $minJS->add(__DIR__ . "/../../../shared/plugins/jquery-3.6.0/jquery-3.6.0.min.js");
    $minJS->add(__DIR__ . "/../../../shared/plugins/jquery.form-4.3.0/jquery.form.min.js");
    $minJS->add(__DIR__ . "/../../../shared/plugins/slick-1.8.1/slick/slick.min.js");
    $minJS->add(__DIR__ . "/../../../shared/scripts/script.js");

    //THEME
    $minJS->add(__DIR__ . "/../../../themes/" . CONF_VIEW_THEME . "/assets/js/script.js");


    //Minify JS
    $minJS->minify(__DIR__ . "/../../../themes/" . CONF_VIEW_THEME . "/assets/scripts.js");
}