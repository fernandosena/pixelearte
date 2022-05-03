<?php

namespace Source\Models;

use Source\Core\Model;
use Source\Models\Product\ProductVariation;

/**
 * Class Product
 * @package Source\Models
 */
class Product extends Model
{
    /**
     * Product constructor.
     */
    public function __construct()
    {
        parent::__construct("products", ["id"], ["category_id"]);
        return $this;
    }

    public function findProduct(?string $terms = null, ?string $params = null, string $columns = "*")
    {
//        $terms = "" . ($terms ? " AND {$terms}" : "");
//        $params = "" . ($params ? "&{$params}" : "");

        return parent::find($terms, $params, $columns);
    }

    public function variationPrice()
    {
        return (new ProductVariation())->find("product_id = :pId", "pId={$this->id}", "MAX(price) as max, MIN(price) as min")
            ->fetch();
    }

    public function variation(): ?array
    {
        $variation =  (new ProductVariation())->find("product_id = :pId", "pId={$this->id}")
            ->fetch(true);
//        var_dump($variation[0]->material()[0]->title);
        foreach ($variation as $item) {
            foreach ($item->material() as $material) {
                $array["material"][$material->id] = $material->title;
            }
            foreach ($item->print() as $print) {
                $array["print"][$print->id] = $print->title;
            }
            foreach ($item->quantity() as $quantity) {
                $array["quantity"][$quantity->id] = $quantity->value;
            }
        }
        return $array;
    }

    public function findByUri($uri)
    {
        return $this->find("uri = :u", "u={$uri}")->fetch();
    }

    public function images(): ?array
    {
        if ($this->id) {
            return (new ProductImage())->find("product_id = :pId", "pId={$this->id}")
                ->fetch(true);
        }
        return null;
    }
}