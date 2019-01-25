<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
        integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
        integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
        integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous">
    </script>
</head>

<body>
    <?php
    $peliculas = array(
        "a" => array("id" => 1, "titulo" => "los simpsons", "director" => "Alfredo duran", "año" => "1998", "duracion" => "776"),
        "b" => array("id" => 2, "titulo" => "los picapiedras", "director" => "juan garzon", "año" => "2009", "duracion" => "876"),
        "c" => array("id" => 3, "titulo" => "los 3 chiflados", "director" => "luis petro", "año" => "1965", "duracion" => "876"),
        "d" => array("id" => 4, "titulo" => "los caballeros del zodiaco", "director" => "yadira rivera", "año" => "1968", "duracion" => "876"),
        "f" => array("id" => 5, "titulo" => "madagascar", "director" => "dennis franco", "año" => "1876", "duracion" => "1876")
    );

    ?>

    <table class="table table-bordered table-hover  ">
        <thead class="bg-dark text-white">
            <tr>
                <th>Identificdor</th>
                <th>Titulo</th>
                <th>Director</th>
                <th>Año</th>
                <th>Duracion en minutos</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><?php echo $peliculas["a"]["id"] ?></td>
                <td><?php echo $peliculas["a"]["titulo"] ?></td>
                <td><?php echo $peliculas["a"]["director"] ?></td>
                <td><?php echo $peliculas["a"]["año"] ?></td>
                <td><?php echo $peliculas["a"]["duracion"] ?></td>
            </tr>
            <tr>
                <td><?php echo $peliculas["b"]["id"] ?></td>
                <td><?php echo $peliculas["b"]["titulo"] ?></td>
                <td><?php echo $peliculas["b"]["director"] ?></td>
                <td><?php echo $peliculas["b"]["año"] ?></td>
                <td><?php echo $peliculas["b"]["duracion"] ?></td>
            </tr>
            <tr>
                <td><?php echo $peliculas["c"]["id"] ?></td>
                <td><?php echo $peliculas["c"]["titulo"] ?></td>
                <td><?php echo $peliculas["c"]["director"] ?></td>
                <td><?php echo $peliculas["c"]["año"] ?></td>
                <td><?php echo $peliculas["c"]["duracion"] ?></td>
            </tr>
            <tr>
                <td><?php echo $peliculas["d"]["id"] ?></td>
                <td><?php echo $peliculas["d"]["titulo"] ?></td>
                <td><?php echo $peliculas["d"]["director"] ?></td>
                <td><?php echo $peliculas["d"]["año"] ?></td>
                <td><?php echo $peliculas["d"]["duracion"] ?></td>
            </tr>
            <tr>
                <td><?php echo $peliculas["f"]["id"] ?></td>
                <td><?php echo $peliculas["f"]["titulo"] ?></td>
                <td><?php echo $peliculas["f"]["director"] ?></td>
                <td><?php echo $peliculas["f"]["año"] ?></td>
                <td><?php echo $peliculas["f"]["duracion"] ?></td>
            </tr>
        </tbody>
    </table>

</body>

</html>