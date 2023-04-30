function encontraNumero(lista){
    console.log("entrei na função");
    menor=lista[0];
    tamanho= lista.length;


    for(i=0; i< tamanho; i=i+1){
        lido=lista[i];
        if(lido < menor){
            menor=lido
        }
    }
    return menor;
}

function calculaMedia(lista){
    //var lista=[7,5,9,66,9,5,36,11];
    soma=0;
   
    tamanho=lista.length
    for(i=0; i<tamanho; i=i+1){
        lido=lista[i];
        soma=soma+lido;
    }
    
    media=soma/tamanho;
    //document.write("Média= "+media);
    return media;
}
function fazAccaoDoBotão(){
    alert("Carreguei no botão");
    var inserido=document.getElementById('lista').value;
    console.log(dado_inserido);

    var dado_inserido_convertido=dado_inserido.slipt(',');

    console.log(dado_inserido_convertido);
    
    resultado = calculaMedia(dado_inserido);
    alert(rersultado);
    
}