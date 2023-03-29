function procuraNumero(){

    lista=document.getElementById('lista').value;

    numero=document.getElementById('encontra').value;

    listaConvertida=lista.split(',');
    console.log(listaConvertida);

    tantoFaz=listaConvertida.length;
    numero_encontrado=0;

    /*for(i=0; i<tantoFaz  ;i=i+1){

        numeroLido=listaConvertida[i];
        if(numeroLido == numero){
            numero_encontrado=numero_encontrado+1;
        }
    }*/
    i=0;
    while(numero_encontrado==0 && i<tantoFaz)
    {
        numeroLido = listaConvertida[i];
        if(numeroLido==numero){
            numero_encontrado=numero_encontrado+1;
        }
        console.log(i);
        i=i+1;

    }


    if(numero_encontrado >=1){
        document.getElementById('resultado').innerText="Encontrado";
    }

    else{
        document.getElementById('resultado').innerText="Não Encontrado";
    }

    
}

