<?php

namespace Source\Models\Product;

use Source\Core\Model;

/**
 * Class ProductVariation
 * @package Source\Models
 */
class ProductVariation extends Model
{
    /**
     * Category constructor.
     */
    public function __construct()
    {
        parent::__construct("products_variation", ["id"], ["product_id"]);
    }

    public function findProduct(int $id)
    {
        return self::find("product_id = :id", "id={$id}")
            ->fetch(true);
    }

    public function material()
    {
        return (new ProductMaterial())
            ->find("id = :id", "id={$this->material_id}")
            ->fetch(true);
    }

    public function print()
    {
        return (new ProductPrint())
            ->find("id = :id", "id={$this->print_id}")
            ->fetch(true);
    }

    public function quantity()
    {
        return (new ProductQuantity())
            ->find("id = :id", "id={$this->quantity_id}")
            ->fetch(true);
    }
}