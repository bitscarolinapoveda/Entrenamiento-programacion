<?php
#namespace clas\poo;
include_once "php_poo_2.php";

class Vehicle
{

    public $brand = "hola";
    public $seats;
    public $fuel_capacity;
    public $licencePlate;
    protected $fuelLevel;
    protected $currentSpeed;
    protected $state;



    use Metodos;
}