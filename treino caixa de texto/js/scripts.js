$(document).ready(function(){
    $('.caixa-texto').keyup(function(){
        console.log('Hello there');
        conteudo_textarea = $('.caixa-texto').val();
        numero_de_caracteres = conteudo_textarea.length;
        $('.contador').text(numero_de_caracteres);
        

        if(numero_de_caracteres == 0 ){
            $('.barra-progresso').removeClass('barra-verde');
           // $('.avalia').text('és um nabo');
            mensagem = "es um nabo";
            $('.contador').append(mensagem);


        }
        else if(numero_de_caracteres >= 1 && numero_de_caracteres <= 10)
        {
            
            $('.barra-progresso').addClass('barra-verde');
            $('.barra-progresso').removeClass('barra-azul');
           // $('.avalia').text('és um bocado nabo');
           mensagem = "es uma beca nabo";
           //$('.contador').text(numero_de_caracteres+ mensagem);
           $('.contador').append(mensagem);

            
        }
        else if(numero_de_caracteres > 10 && numero_de_caracteres <= 20)
        {
            $('.barra-progresso').addClass('barra-azul');
            $('.barra-progresso').removeClass('barra-vermelha');
           // $('.avalia').text('és um nadinha nabo');
           mensagem = "es uma beca pequena nabo";
           //$('.contador').text(numero_de_caracteres+ mensagem);
           $('.contador').append(mensagem);

            
        }
       
        else 
        {
            $('.barra-progresso').addClass('barra-vermelho');
            
            

        }
    });
});