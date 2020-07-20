<?php

/**
 * Trait Products date
 */
trait Products
{
    protected $db;

    public function __construct()
    {
        $this->db = db::instance();
    }

    /**
     * Get Data from database
     */
    public function getData()
    {
        $date = $this->db->run("select * FROM products");
        return $date->fetchAll();
    }
}
