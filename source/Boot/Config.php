<?php
/**
 * DATABASE
 */
define("CONF_DB_HOST", "localhost");
define("CONF_DB_USER", "root");
define("CONF_DB_PASS", "");
define("CONF_DB_NAME", "gatafatal");

/**
 * PROJECT URLs
 */
define("CONF_URL_BASE", "https://www.pixelearte.com.br");
define("CONF_URL_TEST", "http://localhost/gatafatal");

/**
 * SITE
 */
define("CONF_SITE_NAME", "Gata Fatal");
define("CONF_SITE_TITLE", "Somos Mais que uma Gráfica");
define("CONF_SITE_DESC",
    "A ".CONF_SITE_NAME." é mais que uma gráfica que veio te trazer agilidade e qualidade na confecção de seus produtos, tags, cartões, adesivos, flyers e outros.");
define("CONF_SITE_LANG", "pt_BR");
define("CONF_SITE_DOMAIN", "pixelearte.com.br");
define("CONF_SITE_EMAIL", [
    "SAC"=>"sac@pixelearte.com.br"
]);
define("CONF_SITE_ADDR_STREET", "Magalhães Lemos");
define("CONF_SITE_ADDR_NUMBER", "203");
define("CONF_SITE_ADDR_COMPLEMENT", null);
define("CONF_SITE_ADDR_CITY", "São Paulo");
define("CONF_SITE_ADDR_STATE", "SP");
define("CONF_SITE_ADDR_ZIPCODE", "05207-130");
define("CONF_SITE_PHONE", "(11) 9 9999-9999");

/**
 * SOCIAL
 */
define("CONF_SOCIAL_TWITTER_CREATOR", "@creator");
define("CONF_SOCIAL_TWITTER_PUBLISHER", "@creator");
define("CONF_SOCIAL_FACEBOOK_APP", "5555555555");
define("CONF_SOCIAL_FACEBOOK_PAGE", "pixelearteoficial");
define("CONF_SOCIAL_FACEBOOK_AUTHOR", "pixelearteoficial");
define("CONF_SOCIAL_GOOGLE_PAGE", "5555555555");
define("CONF_SOCIAL_GOOGLE_AUTHOR", "5555555555");
define("CONF_SOCIAL_INSTAGRAM_PAGE", "pixelearteoficial");
define("CONF_SOCIAL_YOUTUBE_PAGE", "youtube");
define("CONF_SOCIAL_WHATSAPP", "11941747686");
define("CONF_SOCIAL_WHATSAPP_LINK", "send?phone=55".CONF_SOCIAL_WHATSAPP."&text=Olá, vim do site e queria saber sobre seus produtos e serviços");
define("CONF_SOCIAL_PINTEREST", "pinterest");

/**
 * DATES
 */
define("CONF_DATE_BR", "d/m/Y H:i:s");
define("CONF_DATE_APP", "Y-m-d H:i:s");

/**
 * PASSWORD
 */
define("CONF_PASSWD_MIN_LEN", 8);
define("CONF_PASSWD_MAX_LEN", 40);
define("CONF_PASSWD_ALGO", PASSWORD_DEFAULT);
define("CONF_PASSWD_OPTION", ["cost" => 10]);

/**
 * VIEW
 */
define("CONF_VIEW_PATH", __DIR__ . "/../../shared/views");
define("CONF_VIEW_EXT", "php");
define("CONF_VIEW_THEME", "gatafatalweb");
define("CONF_VIEW_APP", "pixeleartepp");
define("CONF_VIEW_ADMIN", "pixelearteadm");

/**
 * UPLOAD
 */
define("CONF_UPLOAD_DIR", "storage");
define("CONF_UPLOAD_IMAGE_DIR", "images");
define("CONF_UPLOAD_FILE_DIR", "files");
define("CONF_UPLOAD_MEDIA_DIR", "medias");

/**
 * IMAGES
 */
define("CONF_IMAGE_CACHE", CONF_UPLOAD_DIR . "/" . CONF_UPLOAD_IMAGE_DIR . "/cache");
define("CONF_IMAGE_SIZE", 2000);
define("CONF_IMAGE_QUALITY", ["jpg" => 75, "png" => 5]);
define("CONF_IMAGE_MINIMU_SIZE", ["width" => 1080, "height" => 1080]);

/**
 * MAIL
 */
define("CONF_MAIL_HOST", "smtp.hostinger.com");
define("CONF_MAIL_PORT", "465");
define("CONF_MAIL_USER", "no-reply@pixelearte.com.br");
define("CONF_MAIL_PASS", "Rede2050kl@");
define("CONF_MAIL_SENDER", ["name" => "Pixelearte", "address" => "no-reply@pixelearte.com.br"]);
define("CONF_MAIL_SUPPORT", "sac@pixelearte.com.br");
define("CONF_MAIL_OPTION_LANG", "br");
define("CONF_MAIL_OPTION_HTML", true);
define("CONF_MAIL_OPTION_AUTH", true);
define("CONF_MAIL_OPTION_SECURE", "tls");
define("CONF_MAIL_OPTION_CHARSET", "utf-8");

/**
 * PAGAR.ME
 */
define("CONF_PAGARME_MODE", "test");
define("CONF_PAGARME_LIVE", "ak_live_*****");
define("CONF_PAGARME_TEST", "ak_test_*****");
define("CONF_PAGARME_BACK", CONF_URL_BASE . "/pay/callback");