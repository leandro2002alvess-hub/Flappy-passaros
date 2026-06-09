/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//Criando tres variaveis para nosso clone do flappy passaros
velv = 0
grav = 0.1
forca_voo = 5

//Criando uma variavel booleana
estou_vivo = true

//Criando um timer para reiniciar o jogo
tempo_reinicio = 0
//Tempo limite será de 60 frames
tempo_reinicio_limite = 60

//Criando um timer para me gerar pontos enquanto estiver vivo
tempo_pontos = 0
tempo_pontos_limite = 10

audio_play_sound(snd_gameplay, 1 ,1)
