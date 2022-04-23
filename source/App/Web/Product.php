<?php

namespace Source\App\Web;

use Source\Core\Controller;
use Source\Models\Report\Access;
use Source\Models\Report\Online;

/**
 * Web Product
 * @package Source\App
 */
class Product extends Controller
{
    /**
     * Web constructor.
     */
    public function __construct()
    {
        parent::__construct(__DIR__ . "/../../../themes/" . CONF_VIEW_THEME . "/");

        (new Access())->report();
        (new Online())->report();
    }

    /**
     * SITE HOME
     */
    public function home(): void
    {
        $head = $this->seo->render(
            CONF_SITE_NAME . " - " . CONF_SITE_TITLE,
            CONF_SITE_DESC,
            url(),
            theme("/assets/images/share.jpg")
        );

        echo $this->view->render("product", [
            "head" => $head
        ]);
    }
    public function single(?array $data): void
    {
        $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

        $head = $this->seo->render(
            CONF_SITE_NAME . " - " . CONF_SITE_TITLE,
            CONF_SITE_DESC,
            url(),
            theme("/assets/images/share.jpg")
        );

        $product = (new \Source\Models\Product())->findByUri($data["uri"]);
        echo $this->view->render("product-single", [
            "head" => $head,
            "product"=> $product,
            "relateds" => (new \Source\Models\Product())
                ->find("category = :c AND id != :id", "c={$product->category}&id={$product->id}")
                ->limit(5)
            ->fetch(true)
        ]);
    }
}