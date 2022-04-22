<?php

namespace Source\App\Web;

use Source\Core\Controller;
use Source\Models\Report\Access;
use Source\Models\Report\Online;

/**
 * Web Cart
 * @package Source\App
 */
class Cart extends Controller
{
    /**
     * Web constructor.
     */
    private $cart;
    public function __construct()
    {
        parent::__construct(__DIR__ . "/../../../themes/" . CONF_VIEW_THEME . "/");

        (new Access())->report();
        (new Online())->report();
        $this->cart = (new \Source\Core\Cart());
    }


    public function home(): void
    {
        $head = $this->seo->render(
            CONF_SITE_NAME . " - " . CONF_SITE_TITLE,
            CONF_SITE_DESC,
            url(),
            theme("/assets/images/share.jpg"),
            false
        );

        echo $this->view->render("cart", [
            "head" => $head,
            "products" => $this->cart->productList()
        ]);
    }

    public function checkout()
    {
        $head = $this->seo->render(
            CONF_SITE_NAME . " - " . CONF_SITE_TITLE,
            CONF_SITE_DESC,
            url(),
            theme("/assets/images/share.jpg")
        );
        echo $this->view->render("checkout", [
            "head" => $head,
        ]);
    }

    public function add(?array $data): void
    {
        $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);
        $this->cart->add($data);
        redirect("/carrinho");
    }

    public function del(?array $data): void
    {
        $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);
        $this->cart->del($data);
        redirect("/carrinho");
    }
}