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
        if($produto){
            $qtd = ($data["qtd"] ?? 1);
            if($this->session->has("compras") && isset($_SESSION["compras"]["carrinho"][$produto->id])){
                $_SESSION["compras"]["carrinho"][$produto->id]["qtd"] += $qtd;
                $_SESSION["compras"]["carrinho"][$produto->id]["subtotal"] = $_SESSION["compras"]["carrinho"][$produto->id]["qtd"]*$_SESSION["compras"]["carrinho"][$produto->id]["value"];
                $_SESSION["compras"]["carrinho"][$produto->id]["comment"] = ($data["observation"] ?? null || $_SESSION["compras"]["carrinho"][$produto->id]["comment"] ?? null);
            }else{
                $_SESSION["compras"]["carrinho"][$produto->id] = [
                    "id" => $produto->id,
                    "image" => $produto->image,
                    "uri" => $produto->uri,
                    "title" => $produto->title,
                    "value" => $produto->price,
                    "subtotal" => $qtd*$produto->price,
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