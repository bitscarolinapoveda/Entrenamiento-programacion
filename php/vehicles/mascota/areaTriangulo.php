<?php
namespace triangulo;

class AreaTriangulo
{
    private $base;
    private $altura;

    public function __construct()
    {
    }

    public function getBase()
    {
        return $this->base;
    }


    public function setBase($base)
    {
        $this->base = $base;
        return $this;
    }


    public function getAltura()
    {
        return $this->altura;
    }


    public function setAltura($altura)
    {
        $this->altura = $altura;
        return $this;
    }


    public function hallarArea()
    {
        if ($this->getAltura() != null && $this->getBase() != null) {
            if ($this->getAltura() > 0 && $this->getBase() > 0) {
                $area = ($this->getAltura() * $this->getBase()) / 2;
                return "el area del triangulo es de ".$area;
            } else {
                throw new \ErrorException("los valores de base y altura del triangulo deben de ser mayores a cero", 1);
            }
        } else {
            throw new \ErrorException("por favor debes de introducir los valores de altura y base del triagulo", 1);
        }
    }
}

try {
    $trian = new AreaTriangulo();

    $trian->setAltura(10);
    $trian->setBase(2);
     echo  $trian->hallarArea();
} catch (\Throwable $th) {
    echo $th->getMessage();
}
?>