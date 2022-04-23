<?php

namespace Source\Models;

use Source\Core\Model;

/**
 * Class Banner
 * @package Source\Models
 */
class Banner extends Model
{
    /**
     * Product constructor.
     */
    public function __construct()
    {
        parent::__construct("banners", ["id"], ["product", "image"]);
        return $this;
    }

    public function product(): Product
    {
        return (new Product())->findById($this->product);
    }
}