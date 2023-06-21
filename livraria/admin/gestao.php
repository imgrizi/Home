<?php
    include('../funcoes.php');
    include('../config.php');
    ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="post" action="inserelivro.php" enctype="multipart/form-data">
    <table>
    <tr>
        <td>Titulo livro</td>
        <td><input type="text" name="titulo"></td>


    </tr>

    <tr>
        <td>Preço livro</td>
        <td><input type="text" name="preco"></td>


    </tr>

    <tr>
        <td>Stock livro</td>
        <td><input type="text" name="stock"></td>


    </tr>

    <tr>
        <td>Descrição livro </td>
        <td><input type="text" name="descricao"></td>


    </tr>

    <tr>
        <td>Capa livro</td>
        <td><input type="file" name="capa"></td>


    </tr>

    <tr>
        <td>Editora </td>
        <td>
            <select name="editora">
                <?php
                    $lista_editoras = getEditoras($ligacao);

                    while ($linha= mysqli_fetch_assoc($lista_editoras)){
                ?>
                <option value="<?php echo $linha['id_editora']?>"><?php echo ($linha['nome_editora']); ?> </option>
                <?php } ?>
            </select>
                
        </td>


    </tr>

    </table>
    <button>
        Guardar
    </button>
</form>
    
</body>
</html>