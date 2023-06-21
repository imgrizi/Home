function verificaEmail(){
console.log('Entrei no verifica email');

email_a_pesquisar=$('input[name=email]').val();

console.log(email_a_pesquisar);

$.post('verificaemail.php',{email: email_a_pesquisar},function(data){
    alert(data);

    if(data !='ok'){
        $('.zona-de-mensagem').text('O email ja se encontra registado');
    }

});

}

function limpaAvisos(){
   $('.zona-de-mensagem').text('');
}