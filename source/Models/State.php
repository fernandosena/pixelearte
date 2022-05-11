<?php

namespace Source\Models;

use Source\Core\Model;

/**
 * Class State
 * @package Source\Models
 */
class State extends Model
{
    /**
     * Product constructor.
     */
    public function __construct()
    {
        parent::__construct("state", ["id"], ["title"]);
        return $this;
    }

    public function address()
    {
        return (new Address())->find("state_id = :s", "s={$this->id}")->fetch(true);
    }
}