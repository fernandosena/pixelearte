<?php

namespace Source\Models\Product;

use Source\Core\Model;

/**
 * Class ProductMaterial
 * @package Source\Models
 */
class ProductMaterial extends Model
{
    /**
     * Category constructor.
     */
    public function __construct()
    {
        parent::__construct("products_material", ["id"], ["title"]);
    }
}