<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Oeraciones matematicas</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="estilos.css">
    
    <script src="jquery-3.3.1.min.js"></script>
   <script >

       $(document).ready(function () {
           
            $("#jq").fadeIn(3000);
           
           
       })
  
   </script>
     
   
</head>
<body >
  <div id="rr" class="bg-warning"> <h1 class="text-center">Operaciones matematicas</h1></div>

   <div id="jq">
     <?php 
         $num1=41;
         $num2=2.1;

         #suma
         $num3=$num1+$num2;
         echo " <h3 id='uu'> El resultado de sumar " .$num1.  " y ". $num2 ." es ". $num3 ."</h3><br>";
          #resta
          $num3=$num1-$num2;
          echo "<h3 id='uu'> El resultado de restar " .$num1.  " y ". $num2 ." es ". $num3 ."</h3><br>";
           #multiplicacion
         $num3=$num1*$num2;
         echo "<h3 id='uu'> El resultado de multiplicar " .$num1.  " y ". $num2 ." es ". $num3 ."</h3><br>";
          #division
          $num3=$num1/$num2;
          echo "<h3 id='uu'> El resultado de dividir " .$num1.  " y ". $num2 ." entre ". $num3 ."</h3><br>";




     
     ?>
   
   </div>






</body>
</html>