<?php
if (strpos(url(), "localhost")) {
    /**
     * CSS
     */
    $minCSS = new MatthiasMullie\Minify\CSS();
    //SAHARED

    //THEME
//    $minCSS->add(__DIR__ . "/../../../themes/gatafatalweb/assets/css/app.css");

    //Minify CSS
    $minCSS->minify(__DIR__ . "/../../../themes/" . CONF_VIEW_THEME . "/assets/style.css");

    /**
     * JS
     */
    $minJS = new MatthiasMullie\Minify\JS();

    //SAHARED
//    $minJS->add(__DIR__ . "/../../../themes/gatafatalweb/assets/js/home/home.js");

    //THEME


    //Minify JS
    $minJS->minify(__DIR__ . "/../../../themes/" . CONF_VIEW_THEME . "/assets/scripts.js");
}