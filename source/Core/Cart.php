<?php

namespace Source\Core;

use Source\Models\Product;

class Cart
{
    private $session;

    public function __construct()
    {
        $this->session = (new Session());
//        $this->session->destroy();
    }

    public function add($data)
    {
        //Verifica produto
        $produto = (new Product())->findById($data["id"]);
        if($produto){
            $qtd = ($data["qtd"] ?? 1);
            if($this->session->has("compras") && isset($_SESSION["compras"][$produto->id])){
                $_SESSION["compras"][$produto->id]["qtd"] += $qtd;
                $_SESSION["compras"][$produto->id]["subtotal"] = $_SESSION["compras"][$produto->id]["qtd"]*$_SESSION["compras"][$produto->id]["value"];
                $_SESSION["compras"][$produto->id]["comment"] = ($data["observation"] ?? null || $_SESSION["compras"][$produto->id]["comment"] ?? null);
            }else{
                $_SESSION["compras"][$produto->id] = [
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
            return $this;
        }

        return null;
    }

    public function del($data)
    {
        if($this->session->has("compras") && isset($_SESSION["compras"][$data["id"]])){
            if(!$data["all"]) {
                if ($_SESSION["compras"][$data["id"]]["qtd"] > 1) {
                    $_SESSION["compras"][$data["id"]]["qtd"] -= 1;
                    $_SESSION["compras"][$data["id"]]["subtotal"] = $_SESSION["compras"][$data["id"]]["qtd"] * $_SESSION["compras"][$data["id"]]["value"];
                }
                return;
            }
            unset($_SESSION["compras"][$data["id"]]);
        }
    }


    public function productList()
    {
        if($this->session->has("compras")){
            return $_SESSION["compras"];
        }
        return null;
    }
}