<?php

class Notas{

    private$nome;
    private$notas;
   

    public function __construct($nome_recebido,$notas_recebidas){
        
        $this->nome=$nome_recebido;
        $this->notas=$notas_recebidas;
       

    }

    public function getNome(){
        return $this->nome;
    }

    public function getNotas(){
        return $this->notas;
    }

    


    public function setNome($nome_recebido){
        $this->nome=nome_recebido;

    }

    public function setNotas($notas_recebidas){
        $this->notas=$notas_recebidas;

    }

    public function getMedia(){
        $tamanho = count($this->notas);
        $soma=0;
       for ($i=0; $i<$tamanho ; $i++){
           $soma = $soma + $this->notas[$i];
       }
       
       $media = $soma / $tamanho;
    
      return $media;
    }

    

}