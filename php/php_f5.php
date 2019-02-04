<?php
#file_exists funcion q busca un fichero y filesize el tamanio
$elemento = file_exists("C:\wamp64\www\php/php_example.log");
echo "el tamaño del archivo que se ha encontrado es " .$tamanio = filesize("C:\wamp64\www\php/php_example.log")."<br>";

if ($tamanio > 0 && $elemento == true) {

    $a = $_SERVER['REMOTE_ADDR'];
    $b = $_SERVER['HTTP_USER_AGENT'];
    $c = strtotime(date("d/m/Y"));
    $texto = $a . "|" . $c . "|" . $b ;
    $fp = fopen("C:\wamp64\www\php/php_example.log", "r+");
    fseek($fp, 191);
    fwrite($fp, $texto);
    fclose($fp);
    echo $texto . "<br>es la frase que se incluira al archivo encontrado <br>";
    echo "revisa el archivo q se ha editado";

} else {
    echo "el archivo no se encuentra o debe de estar vacio";
}


?>