<?php
namespace php\vehicles;

class Vehicle
{

    public $brand;
    public $seats;
    public $fuelCapacity;
    public $licencePlate;
    protected $fuelLevel;
    protected $currentSpeed;
    protected $state;


    #metodos get
    public function getBrand()
    {
        return $this->brand;
    }

    public function getSeats()
    {
        return $this->seats;
    }

    public function getLicensePlate()
    {
        return $this->licencePlate;
    }

    #metodos set
    public function setFuelLevel($fuelLevel)
    {
        $this->fuelLevel = $fuelLevel;
    }

    public function setCurrentSpeed($currentSpeed)
    {
        $this->currentSpeed = $currentSpeed;
    }

    public function setState($state)
    {
        $this->state = $state;
    }
    public function getState()
    {
        return $this->state;
    }
}
