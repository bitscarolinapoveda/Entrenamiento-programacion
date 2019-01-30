<?php
require_once "php_7.php";

$numeros = array(
    array("num1" => 41, "num2" => 2.1),
    array("num1" => 3, "num2" => 67),
    array("num1" => 145, "num2" => 0),
    array("num1" => 22, "num2" => 51)
);

$operaciones = array(
    'suma' => "+", 'resta' => "-",
    'multiplicacion' => "*", 'diviion' => "/"
);


foreach ($numeros as $key) {
    foreach ($operaciones as $value) {
        calculadora($key["num1"], $key["num2"], $value);
    }
}
?>