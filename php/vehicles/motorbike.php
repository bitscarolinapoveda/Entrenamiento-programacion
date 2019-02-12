<?php
namespace motorbike;

require "php_poo_1.php";
use php\Vehicles\Vehicle;

class MotorBike extends Vehicle
{
    public function __construct($marca, $nAsientos, $capCombustible, $matricula, $type)
    {
        parent::__construct($marca, $nAsientos, $capCombustible, $matricula);
        $this->type = $type;
    }

    public function acelerar($value = 0)
    {
        if ($this->state == "on") {
            if ($this->fuelLevel != 0) {
                if ($value == 0) {
                    $this->currentSpeed += 1*3;
                    $this->fuelLevel -= 1*3;
                    echo "el vehiculo de matricula ".$this::getLicensePlate() ." ha incrementado la velocidad  en 1 y la
					 velocidad en el momento es de ".
                     $this->currentSpeed." el nivel de gasolina es ". $this->fuelLevel.'<br>';
                } else {
                    $this->currentSpeed += $value*3;
                    $this->fuelLevel -= $value*3;
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
}
