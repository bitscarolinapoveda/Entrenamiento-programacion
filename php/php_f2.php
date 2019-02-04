<?php

$numbers = [3, 45, 22, 12, 33, 23, 44, 1, 121];
$cant = count($numbers);
echo "cantidad de elementos en el array " . count($numbers);
echo "<hr>";

#------------
$par = 0;
$inpar = 0;
foreach ($numbers as $key) {
    if ($key % 2 == 0) {
        $par++;
    } else {
        $inpar++;
    }
}
echo " la cantidad e numeros pares en el array es " . $par . "<br>";
echo " la cantidad e numeros inpares en el array es " . $inpar . "<br>";
echo "<hr>";


#-----------
$w = "";
asort($numbers);
foreach ($numbers as $key) {
    $w .= $key . ",";
}
echo " orden del array de forma ascendente " . trim($w, ",");
echo "<hr>";



#----------------
$moreNumbers = explode(":", "5:76:7:8");
echo "convierte la cadena  5:76:7:8 en un array <br>";
var_dump($moreNumbers);
echo "<hr>";


#-----------
echo"union de dos  arrays en uno <br>";
$numbers = array_merge($numbers, $moreNumbers);
print_r($numbers);
echo "<br>array ordenado de manera descenente <br>";
arsort($numbers);
print_r($numbers);
?>