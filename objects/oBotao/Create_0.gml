/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Criando um sistema para o botão
image_speed = 0

//Criando um timer para a animação ocorrer
tempo_anim = 0;
tempo_anim_limite = 60; // 30 frames = meio segundo de espera
comecou_cronometro = false;

//Rodando a musica do jogo
if(!audio_is_playing(snd_menu))
{
    audio_play_sound(snd_menu, 1, 1)
}

global.opcao_selecionada = 0