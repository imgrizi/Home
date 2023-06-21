<?php

   // echo "Olá entrei no php";
    include('config.php');

    $email_a_pesquisar =$_POST['email'];

    //echo "O email recebido foi o ".$email_a_pesquisar;

    $query = "select * from clientes where email_cliente ='$email_a_pesquisar'";
      $resultado =mysqli_query($ligacao, $query);

    $num_resultados= $resultado -> num_rows;
//echo $num_resultados;

    if($num_resultados==0){
        echo 'ok';
    } else{
        echo'já existe';
    }


?>