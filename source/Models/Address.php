<?php

namespace Source\Models;

use Source\Core\Model;

/**
 * Class Address
 * @package Source\Models
 */
class Address extends Model
{
    /**
     * Product constructor.
     */
    public function __construct()
    {
        parent::__construct("address", ["id"], ["user_id", "state_id", "street", "number"]);
        return $this;
    }

    public function model()
    {
        return (new User())->findById($this->user_id);
    }

    public function state()
    {
        return (new State())->findById($this->state_id);
    }
}