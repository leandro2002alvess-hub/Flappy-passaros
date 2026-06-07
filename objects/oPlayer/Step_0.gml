/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Criando o sistema de movimentos da nossa ave
var space = keyboard_check_pressed(vk_space)
//Verificando para ver se estou apertando espaço 

//Criando o sistema de gravidade e voo da nossa ave
//minha velv armazenara o valor da gravidade dentro dela
velv += grav

//Se eu aperta espaço e eu estiver vivo ou seja a variavel for verdadeira
if(space && estou_vivo == true)
{
    //Então ele irá dizer
    //velv voce se referente a -forca_voo
    //ou seja ele diz para meu velv ser igual a -forca_voo
    //que em resumo a -forca_voo e basicamente a forca que irei ter para manter o voo
    velv = -forca_voo
    
} 


//Criando o sistema de colisão do jogo
//o que esse if fará? 
//ele vai verificar se meu player está colidindo com alguma outra instancia
//dentro da room, caso esteja então ele rodará o codigo dentro do if
if(place_meeting(x, y , oColisor) && estou_vivo == true)
{
    //Meu player vai morrer se eu bater na arvores
    //ao bater eu porque o poder de bater asas
    velv = 0
    forca_voo = 0
    //Ao bater tambem a gravidade será aumentada para cair pra fora da tela
    grav = 1
    //ele perderá a animação
    image_index = 0
    //e o angulo do personagem irá mudar tambem
    image_angle++
}
//Criando um novo if para ver se eu estou saindo da room pela parte de cima
if(y < -128 && estou_vivo == true)
{
    //Meu player vai morrer se eu no teto
    //ao bater eu porque o poder de bater asas
    velv = 0
    forca_voo = 0
    //Ao bater tambem a gravidade será aumentada para cair pra fora da tela
    //show_message("Morri")
}


//por fim iremos colocar y+=velv ou seja ele vai pegar o meu Y da tela/room
//e somar o valor de velv nela
y += velv