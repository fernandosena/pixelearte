<?php

namespace Source\App\Web;

use Source\Core\Controller;
use Source\Models\Product\ProductVariation;
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
//        echo "<pre>";
//        var_dump($_SESSION);
//        echo "</pre>";
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
                ->fetch(true),
            "track" => (object)[
                "fb" => "AddToCart",
                "aw" => "AW-10891322072/QegUCKWd4LYDENjFscko"
            ]
        ]);
    }

    public function checkout(?array $data):void
    {
        $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);
        if(!empty($data)){
            //$dados .= "*ORÇAMENTO ENVIADO%0a*";
            $dados = "*😀NOVO PEDIDO*%0a";
            $dados .= "----------------------------------------%0a";
            //$dados .= "*RESUMO DO ORÇAMENTO*%0a";
            $dados .= "*📝RESUMO DO PEDIDO*%0a%0a";
            //$dados .= "Cód".$order->get_id()."%0a%0a";
            //$dados .= "*📌NÚMERO DO PEDIDO*: ".$order->get_id()."%0a%0a";
            $dados .= "*🛒PRODUTOS*%0a%0a";
            foreach ($this->cart->productList() as $item) {
                $dados .= "({$item["id"]}) - {$item["qtd"]} X {$item["title"]} - ".price_symbol($item["value"])." | {$item["comment"]} %0a";
            }
//            $dados .= "------------------------------------------%0a";
//            $dados .= "*📠TOTAL DOS PRODUTOS* ".price_symbol($_SESSION["calculo"])." %0a";
            $dados .= "------------------------------------------%0a";
            $dados .= "*📌TOTAL DO PEDIDO:* ".price_symbol($_SESSION["calculo"])." %0a";
            $dados .= "----------------------------------------%0a";
            $dados .= "----------------------------------------%0a";
            $dados .= "*📝DADOS DO CLIENTE*%0a";
            $dados .= "*👉NOME:* {$data["first_name"]} {$data["last_name"]} %0a";
//            $dados .= "*📌PONTO DE REFERÊNCIA:* 2 %0a";
            $dados .= "*🌍CEP:* {$data["cep"]} %0a";
            $dados .= "*📌NUMERO:* {$data["numero"]} %0a";
            $dados .= "*📌ESTADO:* {$data["estado"]} %0a";
            $dados .= "*📌CIDADE:* {$data["cidade"]} %0a";
            $dados .= "*📌ENDEREÇO:* {$data["endereco"]} %0a";
            //$dados .= "*📌COMPLEMENTO:* ".$complemento." %0a";
            $dados .= "*☎TELEFONE/WHATSAPP:* {$data["whatsapp"]} %0a%0a%0a";
//            $dados .= "*📌OBSERVAÇÃO DE PAGAMENTO*: 1 %0a";
            //$dados .= "*💰FORMA DE PAGAMENTO:* ".$order->get_payment_method_title()." %0a";
            $dados .= "*PARA MAIS MAIS DUVIDAS NOS ENVIE MENSAGEM*%0a";
            $dados .= "*OU VOLTAR AO SITE* ".CONF_SITE_DOMAIN;
            //$dados .= "*Acompanhe seu pedido* ".$order->get_view_order_url()." %0a";
            //$dados .= "➡ *TOTAL:* = R$".number_format($order->get_total(),2,",",".")."%0a";
            $url = "https://api.whatsapp.com/send?phone=55".CONF_SOCIAL_WHATSAPP."&text=".$dados;
            echo json_encode(["redirect"=>$url]);
            return;
        }

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
                ->fetch(true),
            "track" => (object)[
                "fb" => "InitiateCheckout",
                "aw" => "AW-10891322072/fqCjCMHYkrcDENjFscko"
            ]
        ]);
    }

    public function add(?array $data): void
    {
        if(!empty($data["calc"])){
            $qtd = null;

            $material = (!empty($data["material_id"]) ? " = '{$data["material_id"]}'" : "IS NULL");
            $print = (!empty($data["print_id"]) ? " = '{$data["print_id"]}'" : "IS NULL");
            $quantity = (!empty($data["quantity_id"]) ? " = '{$data["quantity_id"]}'" : "IS NULL");

            $product = (new ProductVariation())
                ->find("product_id = {$data["id"]} AND material_id {$material} AND print_id {$print} AND quantity_id {$quantity}")
                ->fetch();
            $variation = (new ProductVariation())->find("product_id = {$data["id"]} AND print_id {$print}")
                ->fetch(true);

            if($variation){
                foreach ($variation as $item) {
                    $qtd .= "<label><input onclick='quantidade(".$item->quantity()[0]->id.")' required type='radio' name='quantity_id' class='select' value='".$item->quantity()[0]->id."'>{$item->quantity()[0]->value} Uni.</label>";
                }
            }

            echo json_encode(["radio" => $qtd, "idVariation"=> ($product->id ?? null),"price"=>(!empty($product->price) ? price_symbol($product->price): price_symbol(0))]);
            return;
        }

        $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);
        $this->cart->add($data);
        if(!isset($data["observation"])){
            redirect("/carrinho");
        }
        echo json_encode(["redirect"=>url("/carrinho")]);
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
        $variation = (new ProductVariation())->findById($data["id"]);
        $resultado = $variation->price * $data["qtd"];
        if($data["type"] == "add"){
            if(!empty($data["save"]) && $data["save"] == true){
                $_SESSION["compras"]["carrinho"][$data["id"]]["qtd"] = $data["qtd"];
                $_SESSION["compras"]["carrinho"][$data["id"]]["subtotal"] = $resultado;
                $this->cart->atualizar();
            }
            $_SESSION["calculo"] = $_SESSION["calculo"] + $variation->price;
        }

        if($data["type"] == "del"){
            if(!empty($data["save"]) && $data["save"] == true){
                $_SESSION["compras"]["carrinho"][$data["id"]]["qtd"] = $data["qtd"];
                $_SESSION["compras"]["carrinho"][$data["id"]]["subtotal"] = $resultado;
                $this->cart->atualizar();
            }
            $_SESSION["calculo"] -= $variation->price;
        }
        echo json_encode(["subtotal"=>price_symbol($resultado), "total"=>price_symbol($_SESSION["calculo"])]);
    }
}