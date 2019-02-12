<?php
namespace hijo2;

require_once "empleados.php";
use padre\Empleado;

class Repartidor extends Empleado
{
    private $zona;


    public function __construct($nombre, $edad, $salario, $zon)
    {
        parent::__construct($nombre, $edad, $salario);
        $this->zona = $zon;
    }

    public function __destruct()
    {
    }

    public function getZona()
    {
        return $this->zona;
    }


    public function setZona($zona)
    {
        $this->zona = $zona;

        return $this;
    }

    public function plus()
    {

         $er = preg_match("/^zona 3$/i", $this->getZona());
        if ($er==1 && $this->getEdad() < 25) {
            $this->setSalario($this->getSalario() + self::PLUS);
            echo ("se ha subido el sueldo<br>");
        } else {
            echo ("Aun no aplicas a un aumento de salario<br>");
        }
    }
}





?>