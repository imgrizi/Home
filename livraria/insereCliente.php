<?php
include('config.php');

    //echo "ENTREI";

    //print_r($_POST);
    
    $nome_inserido= $_POST['nome'];
    $email_inserido = $_POST['email'];
    $telefone_inserido = $_POST['telefone'];
    $morada_inserida = $_POST['morada'];
    $cc_inserido = $_POST['cc'];
    $pass_inserida = $_POST['pass'];

    $query_de_registo = "insert into clientes
    (nome_cliente, email_cliente, morada_cliente, telefone_cliente, cc_cliente , password_cliente)
    values
    ('".$nome_inserido."',
     '".$email_inserido."',
      '".$morada_inserida."',
      '".$telefone_inserido."',
      '".$cc_inserido."',
      '".$pass_inserida."')";

    mysqli_query($ligacao, $query_de_registo);

    header('location:index.php?area=registo&status=ok');

?>