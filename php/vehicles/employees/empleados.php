<?php
namespace padre;

abstract class Empleado
{
    private $nombre;
    private $edad;
    private $salario;
    const PLUS = 300;


    public function __construct($nombre, $edad, $salario)
    {
        $this->nombre = $nombre;
        $this->edad = $edad;
        $this->salario = $salario;
    }



    public function getNombre()
    {
        return $this->nombre;
    }


    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }


    public function getEdad()
    {
        return $this->edad;
    }


    public function setEdad($edad)
    {
        $this->edad = $edad;

        return $this;
    }


    public function getSalario()
    {
        return $this->salario;
    }


    public function setSalario($salario)
    {
        $this->salario = $salario;

        return $this;
    }

    abstract public function plus();

}



?>