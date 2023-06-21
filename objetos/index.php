<?php
    include('pessoa.php');

    /*
    $pessoa1= new Pessoa();

    $pessoa1->nome ='João';
    $pessoa1->morada='Lisboa';
    $pessoa1->email='joao@mail.com';

    echo $pessoa1 -> nome;


    $pessoa2 = new Pessoa();
    $pessoa2 ->nome ='Maria';
    $pessoa2 ->morada='Porto';
    $pessoa2 ->email= 'maria@gmail.com';

    echo $pessoa2 ->morada
    */

        $pessoa3= new Pessoa('Pedro','Faro','pedr@mail.com');
        $pessoa4= new Pessoa('Inês','Braga','ines@gmail.com');

        echo $pessoa3 ->getNome();
        echo $pessoa3 ->getMorada();
        echo $pessoa3 ->getEmail();
        echo "<br>";
        echo $pessoa4 ->getNome();
        echo "<br>";
        $pessoa3 ->setNome('Manuel');
        echo $pessoa3 ->getNome();

        echo $pessoa4 ->mostraEmTabela();
        echo $pessoa3 ->mostraEmTabela();

        //$pessoa3 ->nome = 'Joana';

        //echo $pessoa3 ->nome;
?>