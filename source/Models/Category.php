<?php

namespace Source\Models;

use Source\Core\Model;
use Source\Models\Category\Subcategory;

/**
 * Class Category
 * @package Source\Models
 */
class Category extends Model
{
    /**
     * Category constructor.
     */
    public function __construct()
    {
        parent::__construct("categories", ["id"], ["title", "uri", "description", "cover", "type"]);
    }

    /**
     * @param string $uri
     * @param string $columns
     * @return null|Category
     */
    public function findByUri(string $uri, string $columns = "*"): ?Category
    {
        $find = $this->find("uri = :uri", "uri={$uri}", $columns);
        return $find->fetch();
    }

    public function product(): Product
    {
        return (new Product())->find("category = :id", "id={$this->id}");
    }

    /**
     * @return Post
     */
    public function posts(): Post
    {
        return (new Post())->find("category = :id", "id={$this->id}");
    }

    public function products(): Product
    {
        return (new Product())->find("category = :id", "id={$this->id}");
    }

    public function subcategory(): Subcategory
    {
        return (new Subcategory())->find("category_id = :id", "id={$this->id}");
    }


    /**
     * @return bool
     */
    public function save(): bool
    {
        $checkUri = (new Category())->find("uri = :uri AND id != :id", "uri={$this->uri}&id={$this->id}");

        if ($checkUri->count()) {
            $this->uri = "{$this->uri}-{$this->lastId()}";
        }

        return parent::save();
    }
}