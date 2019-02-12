<?php

require "php_poo_1.php";

use php\Vehicles as Driving;

$vehiculo1 = new Driving\Vehicle("Macerati", 4, 50, "Bits 001");
$vehiculo1->startEngine();
$vehiculo1->tanquearAuto(50);
$vehiculo1->acelerar(2.2);



?>

