<?php

namespace Source\Models\Product;

use Source\Core\Model;

/**
 * Class ProductPrint
 * @package Source\Models
 */
class ProductPrint extends Model
{
    /**
     * Category constructor.
     */
    public function __construct()
    {
        parent::__construct("products_print", ["id"], ["title"]);
    }
}