<?php

namespace Source\Models\Product;

use Source\Core\Model;

/**
 * Class ProductSize
 * @package Source\Models
 */
class ProductSize extends Model
{
    /**
     * Category constructor.
     */
    public function __construct()
    {
        parent::__construct("products_size", ["id"], ["size"]);
    }
}