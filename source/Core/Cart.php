<?php

namespace Source\Core;

use Source\Models\Product;

class Cart
{
    private $session;

    public function __construct()
    {
        $this->session = (new Session());
    }

    public function add($data)
    {
        //Verifica produto
        $produto = (new Product())->findById($data["id"]);
        $variation = (new Product\ProductVariation())->findById($data["variation"]);
        if($produto){
            $qtd = ($data["qtd"] ?? 1);
            if($this->session->has("compras") && isset($_SESSION["compras"]["carrinho"][$variation->id])){
                $_SESSION["compras"]["carrinho"][$variation->id]["qtd"] += $qtd;
                $_SESSION["compras"]["carrinho"][$variation->id]["subtotal"] = $_SESSION["compras"]["carrinho"][$variation->id]["qtd"]*$_SESSION["compras"]["carrinho"][$variation->id]["value"];
                $_SESSION["compras"]["carrinho"][$variation->id]["comment"] = ($data["observation"] ?? null || $_SESSION["compras"]["carrinho"][$variation->id]["comment"] ?? null);
            }else{
                $_SESSION["compras"]["carrinho"][$variation->id] = [
                    "id" => $produto->id,
                    "image" => $produto->image,
                    "uri" => $produto->uri,
                    "title" => $produto->title,
                    "value" => $variation->price,
                    "variation" => $variation->id,
                    "subtotal" => $qtd*$variation->price,
                    "qtd" => $qtd,
                    "comment" => ($data["observation"] ?? null),
                ];
            }
        }
        $this->atualizar();
        return null;
    }

    public function del($data)
    {
        if($this->session->has("compras") && isset($_SESSION["compras"]["carrinho"][$data["id"]])){
            if(!$data["all"]) {
                if ($_SESSION["compras"]["carrinho"][$data["id"]]["qtd"] > 1) {
                    $_SESSION["compras"]["carrinho"][$data["id"]]["qtd"] -= 1;
                    $_SESSION["compras"]["carrinho"][$data["id"]]["subtotal"] = $_SESSION["compras"]["carrinho"][$data["id"]]["qtd"] * $_SESSION["compras"]["carrinho"][$data["id"]]["value"];
                }
                $this->atualizar();
                return;
            }
            unset($_SESSION["compras"]["carrinho"][$data["id"]]);
            $this->atualizar();
        }
    }

    public function atualizar()
    {
        $total = 0;
        foreach ($_SESSION["compras"]["carrinho"] as $produtos){
            $total += $produtos["subtotal"];
        }
        $_SESSION["compras"]["total"] = $total;
    }


    public function productList()
    {
        if($this->session->has("compras")){
            return $_SESSION["compras"]["carrinho"];
        }
        return null;
    }
}