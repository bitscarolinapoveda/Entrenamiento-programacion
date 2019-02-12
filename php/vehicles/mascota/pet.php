<?php
namespace pet;

abstract class Pet
{
    private $age;

    public function __construct($age)
    {
        $this->age = $age;
    }

    abstract public function feed($quantity);
}
?>