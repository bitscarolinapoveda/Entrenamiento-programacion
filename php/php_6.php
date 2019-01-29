<?php

$employees = [
    13 => [
        'firstname' => 'Carolina',
        'lastname' => 'Poveda',
        'salary' => 900
    ],
    3 => [
        'firstname' => 'Sebastian',
        'lastname' => 'Sanchez',
        'salary' => 2700
    ],
    42 => [
        'firstname' => 'Saul',
        'lastname' => 'Goodman',
        'salary' => 1800
    ]
];
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <ul>

        <?php

        $id = array_keys($employees);
        $idd = 0;
        $msueldo = 0;

        foreach ($employees as $key) {
            switch ($key) {
                case $key['salary'] < 1000:
                    echo "<li>" . $key['firstname'] . " " . $key['lastname'] .
                        " (ID: $id[$idd]) tiene un salario de $" . $key['salary'] . " (bajo)</li>";
                    break;
                case $key['salary'] > 1000 && $key['salary'] < 2000:
                    echo "<li>" . $key['firstname'] . " " . $key['lastname'] .
                        " (ID: $id[$idd]) tiene un salario de $" . $key['salary'] . " (medio)</li>";
                    break;
                case $key['salary'] > 2000:
                    echo "<li>" . $key['firstname'] . " " . $key['lastname'] .
                        " (ID: $id[$idd]) tiene un salario de $" . $key['salary'] . " (alto)</li>";
                    break;
            }

            $idd++;

            if ($msueldo < $key['salary']) {
                $msueldo = $key['salary'];
                $persona = $key['firstname'] . " " . $key['lastname'];
            }
        }

        echo "<br><br>" . $persona . " tiene el salario mas alto de todos";
        ?>

    </ul>

</body>

</html>