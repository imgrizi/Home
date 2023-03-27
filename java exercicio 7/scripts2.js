document.querySelector('input').addEventListener('focus',mostraConteudoInput)
document.querySelector('input').addEventListener('blur',escondeConteudoInput)

function mostraConteudoInput(){
    //alert('entrei no add event listener');
    console.log('entrei no add listener');
    
}

function escondeConteudoInput(){
console.log('entrei no add listener PARA ESCONDER')
}