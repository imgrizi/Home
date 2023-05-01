//document.querySelector('input').addEventListener('focus',mostraConteudoInput)
//document.querySelector('input').addEventListener('blur',escondeConteudoInput)
//usar # no lugar dos inputs
document.querySelector('#nome').addEventListener('focus',mostraConteudoInput)
document.querySelector('#nome').addEventListener('blur',escondeConteudoInput)

document.querySelector('#email').addEventListener('focus',mostraConteudoInput)
document.querySelector('#email').addEventListener('blur',escondeConteudoInput)

function mostraConteudoInput(){
    //alert('entrei no add event listener');
    console.log('entrei no add listener');

}

function escondeConteudoInput(){
console.log('entrei no add listener PARA ESCONDER')
console.log(this.value)
}