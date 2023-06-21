<?php

class Pessoa {
    private $nome;
    private $morada;
    private $email;

    public function __construct($nome_recebido, $morada_recebida, $email_recebido){
        $this->nome =$nome_recebido;
        $this ->morada=$morada_recebida;
        $this ->email= $email_recebido;

    }

    public function getNome(){
        return $this ->nome;
    }

    public function getMorada(){
        return $this ->morada;
    }

    public function getEmail(){
        return $this ->email;
    }





    public function setNome($nome_recebido){
        $this ->nome= $nome_recebido;

    }

    public function setMorada($morada_recebida){
        $this ->morada= $morada_recebida;

    }

    public function setEmail($email_recebido){
        $this ->email= $email_recebido;

    }


    public function mostraEmTabela(){

            $resultado="
                <table border=1>
                <tr>
                <td> nome </td>
                <td> morada </td>
                <td> email </td
                <tr>
                
                <tr>
                <td>$this->nome</td>
                <td>$this->morada</td>
                <td>$this->email</td>
                <tr>
                
                <table>
                ";
            return $resultado;


    }
}

?>