<?php

namespace Source\Models;

use Source\Core\Model;

/**
 * Class ProductImage
 * @package Source\Models
 */
class ProductImage extends Model
{
    /**
     * Product constructor.
     */
    public function __construct()
    {
        parent::__construct("products_images", ["id"], ["product_id", "title", "image", "position"]);
    }
}