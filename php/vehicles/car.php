<?php
namespace car;
use php\Vehicles\Vehicle;

class ClassName extends Vehicle
{
public function __construct($marca, $nAsientos, $capCombustible, $matricula, $type)
    {
        parent::__construct($marca, $nAsientos, $capCombustible, $matricula);
        $this->type = $type;
    }

}



?>