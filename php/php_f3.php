<?php
$countries = [
    'uk' => 'United Kingdom',
    'fr' => 'France',
    'pt' => 'Portugal',
    've' => 'Venezuela',
    'at' => 'Austria',
    'es' => 'Spain',
    'co' => 'Colombia'
];


$bol = false;
$x = "Colombia";
foreach ($countries as $key => $value) {

    if ($value == $x) {
        $bol = true;
    }
}

if ($bol) {
    echo "Mi pais de origen es " . $x . " y esta en la lista <br> ";
} else {
    echo "Mi pais de origen es " . $x . " pero no esta en la lista <br>";
}
echo("<hr>");

asort($countries);
echo(" orden del array de manera alfabetica sin perder relacion con la clave<br>");
print_r($countries);
echo("<br>");
echo("<hr>");
$countries = implode(", ", $countries);
echo(" cadena string apartir de un array <br>");
print_r($countries);






?>