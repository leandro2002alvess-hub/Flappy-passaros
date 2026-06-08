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
//dentro da room, caso esteja então ele rodará o codigo dentro do if e tamberm vai verificar se estou vivo
if(place_meeting(x, y , oColisor) || place_meeting(x, y , oPassaro)  && estou_vivo == true)
{
    //Meu player vai morrer se eu bater na arvores
    //ao bater eu porque o poder de bater asas
    velv = 0
    forca_voo = 0
    //Ao bater tambem a gravidade será aumentada para cair pra fora da tela
    grav = 0.1
    //ele perderá a animação
    image_index = 0
    image_speed = 0
    estou_vivo = false
    //Zerando os obstaculos se eu bati neles
    with (oColisor) 
    {
        velh = 0
        
    }
    with (oPassaro) 
    {
        velh = 0
        
    }
    //Destruindo meu gerador
    instance_destroy(oGerador)
    //zerando meu background ao bater na arvore
    layer_hspeed("bg_arvores", 0)
    layer_hspeed("bg_reflexo_arvores", 0)
    layer_hspeed("bg_reflexo", 0)
    
}

//Ele vai verificar se meu estou vivo e falso
if(estou_vivo == false)
{
    //Caso seja confirmado, então ele rodará tempo reinicio++
    //Ou seja eu irei aumentar o valor de tempo reinicio
    tempo_reinicio++
    //Criando um if para informar que pode ser reiniciado a room
    //Se meu tempo de reinicio for maior que meu tempo limite
    if(tempo_reinicio >= tempo_reinicio_limite) 
    {
        //Se eu morri então reseto meus pontos tambem
        global.pontos = 0
        global.levels = 0
        //Resetando a variavel
        tempo_reinicio = 0
        //Então o jogo poderá ser reiniciado
        game_restart()
            
    }
}


//Criando um novo if para ver se eu estou saindo da room pela parte de cima
if(y < -128 || y > room_height + 32 && estou_vivo == true )
{
    //Meu player vai morrer se eu no teto
    //ao bater eu porque o poder de bater asas
    velv = 0
    forca_voo = 0
    //Ao bater tambem a gravidade será aumentada para cair pra fora da tela
    //show_message("Morri")
    //ele perderá a animação
    image_index = 0
    image_speed = 0
    estou_vivo = false
    //Destruindo meu gerador
    instance_destroy(oGerador)
    //zerando meu background ao bater na arvore
    layer_hspeed("bg_arvores", 0)
    layer_hspeed("bg_reflexo_arvores", 0)
    layer_hspeed("bg_reflexo", 0)
    with (oColisor) 
    {
        velh = 0
        
    }
    with (oPassaro) 
    {
        velh = 0
        
    }
    
}

if (estou_vivo == false)
{
    image_angle += 2//fazendo minha ave girar ao colidir
}

//por fim iremos colocar y+=velv ou seja ele vai pegar o meu Y da tela/room
//e somar o valor de velv nela
y += velv



//Criando um if para gerar nossos pontos
//Fazendo eu ganhar tempo_pontos
tempo_pontos++
//Rodando meu if se meu tempo pontos for maior ou igual ao meu limite e juntamente
//estiver vivo então ele rodará o codigo dentro do if
if(tempo_pontos >= tempo_pontos_limite && estou_vivo == true)
{
    //Fazendo eu ganhar mais pontos durante a gameplay
    global.pontos += 1
    //Dando reset na variavel de tempo
    tempo_pontos = 0
    //debugando
    //show_debug_message(global.pontos)
}