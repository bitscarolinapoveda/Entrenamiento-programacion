<?php

$cadena1 = "abcdefghi";
$cadena2 = "abcdefghi";


if (strlen($cadena1) > strlen($cadena2)) {
    $rr = strlen($cadena1) - strlen($cadena2);
    echo "la cadena1 es mayor que la cadena2 en " . $rr . " caracteres";
} elseif (strlen($cadena1) < strlen($cadena2)) {
    $rr = strlen($cadena2) - strlen($cadena1);
    echo "la cadena2 es mayor que la cadena1 en " . $rr . " caracteres";
} else {
    echo ("las cadenas son iguales y poseen " . strlen($cadena2) . " caracteres cada una");
}

?>
