<?php
namespace truck;

require "php_poo_1.php";
use php\Vehicles\Vehicle;

class Truck extends Vehicle
{
    public function __construct($marca, $nAsientos, $capCombustible, $matricula, $type)
    {
        parent::__construct($marca, $nAsientos, $capCombustible, $matricula);
        $this->type = $type;
    }


    public function frenar()
    {
        if ($this->currentSpeed == 0) {
            echo "el vehiculo de matricula ".$this->getLicensePlate()." ya esta parado<br>";
        } else {
            $this->currentSpeed -= 5;
            echo "el vehiculo de matricula ".$this->getLicensePlate()." ha disminuidos
			su velocidad y la misma actualmente es de "
            .$this->currentSpeed. "<br>";
        }
    }
}



?>