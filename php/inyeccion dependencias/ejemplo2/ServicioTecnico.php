<?php
namespace serT;

require_once "servicioGeneral.php";
use serG\ServicioGeneral;
class ServicioTecnico extends ServicioGeneral
{


    public function lavarMotor()
    {
        echo "se ha lavado todo sus componentes mecanicos tales como motor, frenos, caja de cambios etc<br>";
    }
}
?>