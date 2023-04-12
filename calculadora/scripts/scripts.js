function escolheNumero(numero_escolhido){
    alert(numero_escolhido)
    operador=document.querySelector("input[name=operador]").value;
    if(operador!=''){
        numero_antigo=document.querySelector("input[name=parcela2]").value;
        numero_novo=numero_antigo +numero_escolhido;
        document.querySelector("input[name=parcela2]").value=numero_novo ;
    }
    else{
        numero_antigo=document.querySelector("input[name=parcela1]").value;
        numero_novo=numero_antigo +numero_escolhido;
        document.querySelector("input[name=parcela1]").value=numero_novo;
    }
    document.querySelector('.resultado').innerText+=numero_escolhido;
    document.querySelector(".resultado").innerText+="="+resultado;
    document.querySelector("input[name=parcela1]").value=resultado;
    ocument.querySelector("input[name=parcela2]").value="";

}

function atribuiOperador(operador){
    alert(operador)
    document.querySelector("input[name=operador]").value=operador
}

function apagarTudo(){
    document.querySelector("input[name=operador]").value="";
    document.querySelector("input[name=parcela1]").value="";
    document.querySelector("input[name=parcela2]").value="";
    document.querySelector(".resultado").innerText="";
}


function fazConta(){

    p1=document.querySelector("input[name=parcela1]").value
    p2=document.querySelector("input[name=parcela2]").value
    operador=document.querySelector("input[name=operador]").value

    p1=parseFloat(p1)
    p2=parseFloat(p2)

    switch(operador){
        case '+':{resultado= p1 + p2} break;
        case '-':{resultado= p1 - p2} break;
        case '/':{resultado= p1 / p2} break;
        case '*':{resultado= p1 * p2} 
    }

    document.querySelector(".resultado").innerText = resultado;
}
