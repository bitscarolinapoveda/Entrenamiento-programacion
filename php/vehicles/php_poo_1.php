<?php

namespace php\Vehicles;

class Vehicle
{
    public $brand = 'BMW x6';
    public $seats;
    public $fuelCapacity = 100;
    public $licensePlate = 'bits 001';
    protected $fuelLevel = 0;
    protected $currentSpeed = 0;
    protected $state = 'off';



    #geters
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
        return $this->licensePlate;
    }

    #seters

    public function setFuelLevel($fuelLevel)
    {
        return $this->fuelLevel=$fuelLevel;
    }

    public function setCurrentSpeed($licensePlate)
    {
        return $this->licensePlate=$licensePlate;
    }

    public function setState($state)
    {
        return $this->state=$state;
    }

    #arrancar
    public function startEngine()
    {
        if ($this->state == "off") {
            $this->state = 'on';
            echo "el vehiculo de matricula " .$this::getLicensePlate(). " se h arrancado <br>";
            return true;
        } else {
            echo "el vehiculo de matricula " .$this::getLicensePlate(). " ya estaba en marcha <br>";
            return false;
        }
    }


    public function acelerar($value = 0)
    {
        if ($this->state == "on") {
            if ($this->fuelLevel != 0) {
                if ($value == 0) {
                    $this->currentSpeed += 1;
                    $this->fuelLevel -= 1;
                    echo "el vehiculo de matricula ".$this::getLicensePlate() ." ha incrementado la velocidad  en 1 y la
					 velocidad en el momento es de ".
                     $this->currentSpeed." el nivel de gasolina es ". $this->fuelLevel.'<br>';
                } else {
                    $this->currentSpeed += $value;
                    $this->fuelLevel -= $value;
                    echo "el vehiculo de matricula ".$this::getLicensePlate() ." ha incrementado la velocidad  en ". $value .
                    " y la velocidad en el momento es de "
                    . $this->currentSpeed." el nivel de gasolina es ". $this->fuelLevel.'<br>';
                }
            } else {
                echo "tanquea el auto  no tiene combustible<br>";
            }
        } else {
            echo("Encienda el carro<br>");
        }
    }


    public function frenar()
    {
        if ($this->currentSpeed == 0) {
            echo "el vehiculo de matricula ".$this->getLicensePlate()." ya esta parado<br>";
        } else {
            $this->currentSpeed -= 1;
            echo "el vehiculo de matricula ".$this->getLicensePlate()." ha disminuidos
			su velocidad y la misma actualmente es de "
            .$this->currentSpeed. "<br>";
        }
    }


    public function apagarMotor()
    {
        if ($this->state == 'on' && $this->currentSpeed == 0) {
            $this->setState("off");
            echo "el vehiculo de matricula ".$this->getLicensePlate()." se ha apagado<br>";
        } elseif ($this->state == 'off') {
            echo "el vehiculo de matricula ".$this->getLicensePlate()."  ya estaba apagado<br>";
        } elseif ($this->state == 'on' && $this->currentSpeed != 0) {
            echo "el auto se encuentra en movimiento por favor frene para poder apagarlo<br>";
        }
    }


    public function tanquearAuto($value)
    {
        $f=$this->fuelCapacity/2;
        if (($this->fuelLevel + $value) == $this->fuelCapacity) {
            $this->fuelLevel += $value;
            echo "el vehiculo de matricula ". $this->getLicensePlate()."es ta lleno tiene ".$this->fuelLevel." litros<br>";
        } elseif (($this->fuelLevel + $value)<$this->fuelCapacity) {
            $this->fuelLevel += $value;
            echo "el vehiculo de matricula ". $this->getLicensePlate()." se ha tanqueado con ".$value." litros y en total tiene ".$this->fuelLevel." litros<br>";
        } elseif (($this->fuelLevel + $value)>$this->fuelCapacity) {
            echo "no se puede tanquear con ".$value." litros excederias el limite de combustible del auto<br>";
        }
    }
}
