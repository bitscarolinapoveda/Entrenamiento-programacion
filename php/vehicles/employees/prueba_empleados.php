<?php
namespace uso;

require_once "repartidor.php";
require_once "comercial.php";
use hijo1\Comercial;
use hijo2\Repartidor;

#ejemplos del funcionamiento clase  Comercial
echo ("<h3>Instancias de  empleado tipo comercial</h3>");

$e = new Comercial("juan", 36, 1200, 600);
$e->plus();
echo $e->getSalario();
echo ("<hr>");

$ee = new Comercial("juan", 22, 1200, 100);
$ee->plus();
echo $ee->getSalario();
echo ("<hr>");

$eee = new Comercial("juan", 36, 1200, 100);
$eee->plus();
echo $eee->getSalario();
echo ("<hr>");

$ea = new Comercial("juan", 26, 1200, 600);
$ea->plus();
echo $ea->getSalario();
echo ("<hr>");



#ejemplos del uso de  la clase Repartidor
echo ("<h3>Instancias de  empleado tipo repartidor</h3>");

$e = new Repartidor("PEDRO", 22, 1200, "zona 3");
$e->plus();
echo $e->getSalario();
echo ("<hr>");

$e = new Repartidor("PEDRO", 22, 1200, "ZONA 3");
$e->plus();
echo $e->getSalario();
echo ("<hr>");

$e = new Repartidor("PEDRO", 22, 1200, "ZONA 5");
$e->plus();
echo $e->getSalario();
echo ("<hr>");

$e = new Repartidor("PEDRO", 26, 1200, "ZONA 3");
$e->plus();
echo $e->getSalario();
echo ("<hr>");

$a = new Repartidor("PEDRO", 26, 1200, "ZONA 100");
$a->plus();
echo $a->getSalario();
echo ("<hr>");





?>
