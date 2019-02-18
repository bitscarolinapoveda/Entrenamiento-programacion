<?php
namespace soldado;

require_once "ametralladora.php";
require_once "fusil.php";
require_once "revolver.php";
require_once "iMatar.php";

use ametralladora\Ametralladora;
use fusil\Fusil;
use revolver\Revolver;
use inter\IMatar;

class Soldado
{
    private $iMatar;
    private $apellido;

    public function __construct($apellido, IMatar $inter)
    {
        $this->apellido = $apellido;
        $this->iMatar = $inter;
    }

    public function getIMatar()
    {
        return $this->iMatar;
    }


    public function setIMatar($iMatar)
    {
        $this->iMatar = $iMatar;

        return $this;
    }


    public function getApellido()
    {
        return $this->apellido;
    }


    public function setApellido($apellido)
    {
        $this->apellido = $apellido;

        return $this;
    }
}


echo "<h2>INYECCION DE DEPENDENCIAS</h2>";

$e = new Soldado("sanchez", new Ametralladora);
echo "dispare soldado " . $e->getApellido() . " con la ametralladora  ";
$e->getIMatar()->disparar();
echo "<hr>";


$e = new Soldado("Alarcon", new Fusil);
echo "dispare soldado " . $e->getApellido() . " fusil galil 556 ";
$e->getIMatar()->disparar();
echo "<hr>";



$e = new Soldado("Valenzuela", new Revolver);
echo "dispare soldado " . $e->getApellido() . " revolver 38 mitad hueso ";
$e->getIMatar()->disparar();
