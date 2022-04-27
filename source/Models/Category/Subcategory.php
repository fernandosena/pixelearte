<?php

namespace Source\Models\Category;

use Source\Core\Model;

/**
 * Class Question
 * @package Source\Models\Category
 */
class Subcategory extends Model
{
    /**
     * Question constructor.
     */
    public function __construct()
    {
        parent::__construct("subcategories", ["id"], ["category_id", "title", "uri", "description", "cover"]);
    }
}