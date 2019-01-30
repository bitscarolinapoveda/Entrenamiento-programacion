<?php
$strings = [
    " Lorem ipsum dolor sit amet, consectetur EnTrenamiento elit, sed do eiusmod tempor incididunt ut",
    "Sed ut ENTRENAMIENTO unde omnis iste natus error sit voluptatem accusantium doloremque entrenamiento, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae ENTrenamiento dicta sunt explicabo. ",
    "Phasellus laoreet eu entrenamiento orci et tincidunt. Quisque ac drupal gravida sem, non eleifend erat EntreNAMiento."
];


function cantidadCaracteres($strings)
{

    $a = 0;
    $text = 0;
    foreach ($strings as $key) {
        $a++;
        echo "cadena.$a posee " . strlen($key) . " caracteres<br>";
        $text += strlen($key);
    }

    echo "las cadenas en total poseen " . $text . " caracteres";
}

function cantidadEspacios($strings)
{
    $a = 0;
    $text = 0;
    $rFinal = 0;
    foreach ($strings as $key) {
        $a++;
        $text = strlen($key);
        $tex = trim($key);
        $tex = strlen($tex);
        $res = $text - $tex;
        echo "cadena.$a tiene " . $res . " espacios<br>";
        $rFinal += $res;
    }
    echo "las tres lineas poseian " . $rFinal . " espaciosx";
}

function replace($strings)
{
    $a = 0;
    foreach ($strings as $key) {

        $elementosARemplazar = array(
            "EnTrenamiento", "ENTRENAMIENTO", "entrenamiento",
            "ENTrenamiento", "EntreNAMiento"
        );

        $e = str_replace($elementosARemplazar, "<strong>Entrenamiento.</strong>", $key);
        $strings[$a] = $e;
        echo "-" . $strings[$a] . "<br>";
        $a++;
    }
    return $strings;
}


function calculo($strings)
{
    $x = replace($strings);
    $a = 0;
    $text = 0;
    foreach ($x as $key) {
        $a++;
        $w = (substr_count($key, "Entrenamiento") == 1) ? " palabra" : " palabras";

        echo "cadena.$a posee " . substr_count($key, "Entrenamiento") . " " . $w . " Entrenamiento<br>";
        $text += substr_count($key, "Entrenamiento");
    }

    echo "las cadenas en total poseen " . $text . " veces la palabra Entrenamiento ";
    return $x;
}

function extraer($strings)
{
    foreach ($strings as $key) {
        $q = substr($key, 0, 100);
        echo $q . "<br>";
    }
}


#aplicacion de funciones
cantidadCaracteres($strings);
echo "<hr>";
cantidadEspacios($strings);
echo "<hr>";
$x = calculo($strings);
echo "<hr>";
extraer($x);


?>