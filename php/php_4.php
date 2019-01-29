<?php
$num = 1;
$terminar = 365;
$text = "";
while ($num < 1000) {
    if ($num % 2 != 0) {
        $text .= $num . ",";
    }
    if ($num == $terminar) {
        break;
    }
    $num++;
}
echo trim($text, ",");
echo "holaaaaaaaa";
?>