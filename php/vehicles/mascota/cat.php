<?php
namespace cat;

require_once "pet.php";
use pet\Pet;

class Cat extends Pet
{
    private $name;
    public static $max_feed;
    private $feed = 0;


    public function __construct($name, $age)
    {
        parent::__construct($age);
        $this->name = $name;
        self::$max_feed = 5;
    }

    public function feed($quantity)
    {
        if (!is_int($quantity)) {
            throw new ErrorException("no es un numero", 1);
        }
        if (($quantity + $this->feed) > self::$max_feed) {
            throw new \ErrorException("No puedes darle de comer tanto al gato");
        } else {
            $this->feed += $quantity;
        }
    }
    /**
     * Get the value of name
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set the value of name
     *
     * @return  self
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }
}
?>