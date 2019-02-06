<?php

trait Metodos
{

    public function getBrand()
    {
        return $this->brand;
    }


    public function setBrand($brand)
    {
        $this->brand = $brand;

        return $this;
    }


    public function getSeats()
    {
        return $this->seats;
    }


    public function setSeats($seats)
    {
        $this->seats = $seats;

        return $this;
    }


    public function getFuelCapacity()
    {
        return $this->fuel_capacity;
    }


    public function setFuelCapacity($fuel_capacity)
    {
        $this->fuel_capacity = $fuel_capacity;

        return $this;
    }


    public function getLicencePlate()
    {
        return $this->licencePlate;
    }


    public function setLicencePlate($licencePlate)
    {
        $this->licencePlate = $licencePlate;

        return $this;
    }


    public function getFuelLevel()
    {
        return $this->fuelLevel;
    }


    public function setFuelLevel($fuelLevel)
    {
        $this->fuelLevel = $fuelLevel;

        return $this;
    }


    public function getCurrentSpeed()
    {
        return $this->currentSpeed;
    }


    public function setCurrentSpeed($currentSpeed)
    {
        $this->currentSpeed = $currentSpeed;

        return $this;
    }


    public function getState()
    {
        return $this->state;
    }


    public function setState($state)
    {
        $this->state = $state;

        return $this;
    }
}


?>