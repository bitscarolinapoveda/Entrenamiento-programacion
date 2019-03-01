<?php
$dates = [
    ['day' => 3, 'month' => 12, 'year' => 2005],
    ['day' => 30, 'month' => 2, 'year' => 2017],
    ['day' => 7, 'month' => 9, 'year' => 2019],
    ['day' => 1, 'month' => 11, 'year' => 2014],
];

$elementArray = count($dates);
$ban = 0;
foreach ($dates as $key) {
    if (count($key) == 3) {
        if (checkdate($key['month'], $key['day'], $key['year']) == true) {
            $f = strtotime(implode("/", $key));
            $dates[$ban]['timestamp'] = $f;
        } else {
            unset($dates[$ban]);
        }
    }
    $ban++;
}

$fechaActual = date("d/m/Y");
$fechaActual2 = explode("/", $fechaActual);
$fechaActual2[count($fechaActual2)] = strtotime($fechaActual);
$dates[$elementArray]['day'] = $fechaActual2[0];
$dates[$elementArray]['month'] = $fechaActual2[1];
$dates[$elementArray]['year'] = $fechaActual2[2];
$dates[$elementArray]['timestamp'] = $fechaActual2[3];
print_r($dates);
