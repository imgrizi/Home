<?php
  include('notas.php');
        $notas1= new Notas('Bruno',[15,12,10,11]);
        
        $media_aluno1 = $notas1 ->getMedia();
        echo $media_aluno1;
        


?>