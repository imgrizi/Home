function validaForm(){
    alert("entrei");

    nome_inserido=document.getElementById("nome").value
    morada_inserida=document.getElementById("morada").value
    console.log(nome_inserido)
    console.log(morada_inserida)

    //alert("já li os valores")
    if(nome_inserido !="" && morada_inserida !=""){
        
        return true;
        //alert("dados corretos");

    } else{
        document.getElementById("zona_erro").innerText="Preencha os campos assinalados";
        //alert("DADOS INCORRETOS!!")
        return false;
    }


}
function validaFormMelhor(){
    document.getElementById("obrigatório").style.display="block";
    document.getElementById("obrigatório2").style.display="block";
    document.getElementById("zona_erro").innerText="";
    
    
    nome_inserido=document.getElementById("nome").value
    morada_inserida=document.getElementById("morada").value
if(nome_inserido==""){
    document.getElementById("obrigatório").style.display="block";
}
if(morada_inserida==""){
    document.getElementById("obrigatório2").style.display="block";
}


    
    if(nome_inserido !="" && morada_inserida !=""){
        
        return true;
        //alert("dados corretos");

    } else{
        document.getElementById("zona_erro").innerText="Preencha os campos assinalados";
        //alert("DADOS INCORRETOS!!")
        return false;
    }
}

