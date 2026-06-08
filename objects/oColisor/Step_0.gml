/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Criando os movimentos da arvores
x += velh
//Ele vai pegar o meu X da tela/room e subtrair com base no velh 
//Criando assim um movimento horizontal

//Criando um if para destruir a arvore ao sair da room
//O que será feito? ele vai olhar a posição do meu X da tela/room
//e vai verificar se x e menor que -128 que se refere ao lado esquerda fora da tela
if(x < -128)
{
    //então, toda vez que meu objeto arvore passar para o lado esquerdo
    //fora da tela -128 pixels
    //Então ele vai destruir essa instancia para não pesar o jogo
    instance_destroy()
    //debugando para ver se funcionou
    //show_message("Destruido")
}