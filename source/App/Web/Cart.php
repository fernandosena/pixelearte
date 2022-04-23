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
            "products" => $this->cart->productList(),
            "relateds" => (new \Source\Models\Product())
                ->find()
                ->limit(5)
                ->fetch(true)
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
            "relateds" => (new \Source\Models\Product())
                ->find()
                ->limit(5)
                ->fetch(true)
        ]);
    }

    public function add(?array $data): void
    {
        $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);
        $this->cart->add($data);
        if(empty($data["url"])){
            redirect("/carrinho");
        }
    }

    public function del(?array $data): void
    {
        $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);
        $this->cart->del($data);
        redirect("/carrinho");
    }

    public function calc(?array $data): void
    {
        $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);
        $product = (new \Source\Models\Product())->findById($data["id"]);
        $resultado = $product->price * $data["qtd"];
        if($data["type"] == "add"){
            if(!empty($data["save"]) && $data["save"] == true){
                $_SESSION["compras"]["carrinho"][$data["id"]]["qtd"] = $data["qtd"];
                $_SESSION["compras"]["carrinho"][$data["id"]]["subtotal"] = $resultado;
                $this->cart->atualizar();
            }
            $_SESSION["calculo"] = $_SESSION["calculo"] + $product->price;
        }

        if($data["type"] == "del"){
            if(!empty($data["save"]) && $data["save"] == true){
                $_SESSION["compras"]["carrinho"][$data["id"]]["qtd"] = $data["qtd"];
                $_SESSION["compras"]["carrinho"][$data["id"]]["subtotal"] = $resultado;
                $this->cart->atualizar();
            }
            $_SESSION["calculo"] -= $product->price;
        }
        echo json_encode(["subtotal"=>price_symbol($resultado), "total"=>price_symbol($_SESSION["calculo"])]);
    }
}