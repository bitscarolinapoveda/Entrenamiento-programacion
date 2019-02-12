<?php
namespace interfac;

interface Codify
{
    public function encode($data);
    public function decode($data);
}



class Serialize implements Codify
{
    public function encode($data)
    {
        return serialize($data);
    }

    public function decode($data)
    {
        return unserialize($data);
    }
}


class Json implements Codify
{
    public function encode($data)
    {
        return json_encode($data);
    }


    public function decode($data)
    {
        return json_decode($data);
    }
}

#prueba de los metodos
$data = ['apples' => ['red' => 5, 'green' => 23], 'oranges' => 12, 'pears' => 'Not available'];

#metodos de la clase serialize
$s = new Serialize();
echo "<h3>metodos con la clase serialize</h3>";
echo "cadena codificada<br>";
$res = $s->encode($data);
echo $res;
echo "<hr>";
echo "Cadena decodificada<br> ";
$q = $s->decode($res);
print_r($q);
echo ("<br><br>- - - - - - - - - - - - - - - -");

#metodos de la clase Json
$s = new Json();
echo "<h3>metodos con la clase Json</h3>";
echo "cadena codificada<br>";
$res = $s->encode($data);
echo $res;
echo "<hr>";
echo "Cadena decodificada<br> ";
$q = $s->decode($res);
print_r($q);
?>