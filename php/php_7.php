<?php
function calculadora($num1, $num2, $operacion)
{
    switch ($operacion) {
        case '+':
            $res = $num1 + $num2;
            echo $num1 . " + " . $num2 . " = $res<br>";
            break;
        case '-':
            $res = $num1 - $num2;
            echo $num1 . " - " . $num2 . " = $res<br>";
            break;
        case '*':
            $res = $num1 * $num2;
            echo $num1 . " * " . $num2 . " = $res<br>";
            break;
        case '/':
            if ($num2 == 0) {
                echo $num1 . " / " . $num2 . " = error de division  por cero<br><br>";
            } else {
                $res = $num1 / $num2;
                echo $num1 . " / " . $num2 . " = $res<br><br>";
            }

            break;
    }
}


?>