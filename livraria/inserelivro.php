<?php
    $titulo = $_POST['titulo'];
    $titulo = $_POST['preco'];
    $titulo = $_POST['stock'];
    $titulo = $_POST['descricao'];
    $titulo = $_POST['editora'];

    $capa = $_FILES['capa'];

    print_r($capa);
    $origem = $capa['tmp_name'];
    $destino ="../imagens/imagem_inserida.jpg";

    move_uploaded_file($origem,$destino)
?>