<div>
    <form method="post" action="insereCliente.php">
        <ul>
            <li> Nome : <input type="text" name ="nome"></li>    
            <li> email : <input type="text" name ="email"onfocus="limpaAvisos();" onblur="verificaEmail();"></li>  
            <li> Telefone : <input type="text" name ="telefone"></li>    
            <li> Morada : <input type="text" name ="morada"></li>
            <li> CC : <input type="text" name ="cc"></li>  
            <li> Password : <input type="password" name ="pass"></li>    
            <li>
                <button>REGISTAR</button>
            </li>    



        </ul>
    </form>
</div>
<?php
    if(isset($_GET['status']) && $_GET['status']=='ok'){
        echo "registo efectuado com sucesso";
    }

?>
<div class="zona-de-mensagem"></div>