<?php
namespace hijo1;

require_once "empleados.php";
use padre\Empleado;

class Comercial extends Empleado
{
    private $comision;



    public function __construct($nombre, $edad, $salario, $comision)
    {
        parent::__construct($nombre, $edad, $salario);
        $this->comision = $comision;
    }

    public function __destruct()
    {
    }


    public function getComision()
    {
        return $this->comision;
    }

    public function setComision($comision)
    {
        $this->comision = $comision;

        return $this;
    }


    public function plus()
    {

        if ($this->getEdad() > 30 && $this->getComision() > 200) {
            $this->setSalario($this->getSalario() + self::PLUS);
            echo ("se ha subido el sueldo<br>");
        } else {
            echo ("Aun no aplicas a un aumento de salario<br>");
        }
    }
}




?>