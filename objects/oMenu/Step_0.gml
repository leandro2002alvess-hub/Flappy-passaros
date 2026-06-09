/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Criando o sistema de teclas para interagir com botão
var up = keyboard_check_pressed(ord("W"))
var down = keyboard_check_pressed(ord("S"))

if(up && global.opcao_selecionada == 1)
{
    global.opcao_selecionada = 0
}  
else if(down && global.opcao_selecionada == 0)
{
    global.opcao_selecionada = 1
}
