<?php
namespace lavadero;

require_once "servicioPlus.php";
require_once "ServicioTecnico.php";
use serT\ServicioTecnico;
use serP\ServicioPlus;

class AutoLavado
{
    public $servicioTecnico;
    public $servicioPlus;

    public function __construct(ServicioTecnico $R = null, ServicioPlus $q = null)
    {

        $this->servicioTecnico=$R;
        $this->servicioPlus=$q;
    }

    public function lavarAuto()
    {
        if ($this->servicioPlus!=null && $this->servicioTecnico!=null) {
            $this->servicioTecnico->lavadoExterior();
            $this->servicioTecnico->lavarMotor();
            $this->servicioPlus->lavadoInterno();
        }

        if ($this->servicioPlus!=null && $this->servicioTecnico==null) {
            $this->servicioPlus->lavadoExterior();
            $this->servicioPlus->lavadoInterno();
        }

        if ($this->servicioTecnico!=null && $this->servicioPlus==null) {
            $this->servicioTecnico->lavadoExterior();
            $this->servicioTecnico->lavarMotor();
        }

        if ($this->servicioPlus==null && $this->servicioTecnico==null) {
            throw new \ErrorException("debes de pasar parametros por el constructor", 1);
        }
    }
}


try {
    $e= new AutoLavado(new ServicioTecnico, new ServicioPlus);
$e->lavarAuto();
} catch (\Throwable $th) {
    echo $th->getMessage();
}
jhgf