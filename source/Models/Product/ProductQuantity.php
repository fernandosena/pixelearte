<?php

namespace Source\Models\Product;

use Source\Core\Model;

/**
 * Class ProductQuantity
 * @package Source\Models
 */
class ProductQuantity extends Model
{
    /**
     * Category constructor.
     */
    public function __construct()
    {
        parent::__construct("products_quantity", ["id"], ["title"]);
    }
}