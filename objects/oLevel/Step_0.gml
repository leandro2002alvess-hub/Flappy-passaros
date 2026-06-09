/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Criando um if para rodar meu sistema de level
//Se meu global pontos for maior que meu limite de ponto e global levels for igual ao level atual
if(global.pontos >= limite_pontos && global.levels == level_atual )
{
    //então ele vai fazer meu global level aumentar o valor em mais um
    global.levels += 1
    //meu level atual vai copiar o resultado do global level
    level_atual = global.levels 
    //minha imagem vai pro proximo frame
    image_index++
    //e o valor limite de 100 pontos vai aumentar para mais 100
    limite_pontos += 100
    //Toda vez que eu ganhar nivel eu escuto um som
    audio_play_sound(snd_levelup, 1, 0)
    //Aumetando a velocidade de tudo caso eu passe proximo level
    //with (oPassaro) 
    //{
        ////Meu passaro tambem vai aumentar a velocidade ao passar de nivel
    	//velh--
        //show_debug_message(velh)
    //}
    ////with (oColisor) 
    ////{
        //////Meu colisor tambem vai aumentar a velocidade ao passar de nivel
    	////velh--
    ////}
    //Background tambem vai aumentar a velocidade ao passar de nivel
    layer_hspeed("bg_arvores", layer_get_hspeed("bg_arvores") - 1)
    layer_hspeed("bg_reflexo_arvores", layer_get_hspeed("bg_reflexo_arvores") - 1)
    layer_hspeed("bg_reflexol",layer_get_hspeed("bg_reflexo") -1 )
    
}