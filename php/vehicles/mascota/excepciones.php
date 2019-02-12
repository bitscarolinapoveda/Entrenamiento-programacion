<?php
namespace excepcions;

require_once "cat.php";
use cat\Cat;
$th = null;
$gato = new Cat("only", 4);
for ($i = 1; $i < 10; $i++) {
    try {
        $gato->feed(1);
    } catch (\Throwable $th) {
    }
}
if ($th == null) {
    echo $gato->getName() . " puede seguir comiendo";
} else {
    echo $th->getMessage() . " " . $gato->getName() . ", ps ya esta bien alimentado.";
}
?>