<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Php 1</title>
</head>
<body>
    <?php
        echo "Olá mundo";

        $nome= 'Bruno';
        $apelido= 'Silva';
        $nome_completo= $nome.' '.$apelido;
        $idade=30;

        echo $nome_completo;
        echo '<br>';
        echo $idade;

        $lista=[23,45,86,87,96]

        for($i=0;$i<5;$i++){
            echo $lista[$i];
            echo '<br>';

        }
    ?>
</body>
</html>