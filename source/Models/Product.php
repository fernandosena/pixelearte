<?php

namespace Source\Models;

use Source\Core\Model;

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
        parent::__construct("products", ["id"], ["title", "uri", "category", "details", "price", "quantity"]);
        return $this;
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