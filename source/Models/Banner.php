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
        parent::__construct("banners", ["id"], ["user_id", "cove"]);
        return $this;
    }

    public function user(): User
    {
        return (new User())->findById($this->user_id);
    }
}