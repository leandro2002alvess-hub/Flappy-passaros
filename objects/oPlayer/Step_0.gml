/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Criando o sistema de movimentos da nossa ave
var space = keyboard_check_pressed(vk_space)
//Verificando para ver se estou apertando espaço 

//Criando o sistema de gravidade e voo da nossa ave

//minha velv armazenara o valor da gravidade dentro dela
velv += grav

//Se eu aperta espaço
if(space)
{
    //Então ele irá dizer
    //velv voce se referente a -forca_voo
    //ou seja ele diz para meu velv ser igual a -forca_voo
    //que em resumo a -forca_voo e basicamente a forca que irei ter para manter o voo
    velv = -forca_voo
    
} 

//por fim iremos colocar y+=velv ou seja ele vai pegar o meu Y da tela/room
//e somar o valor de velv nela
y += velv