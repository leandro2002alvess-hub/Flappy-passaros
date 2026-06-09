/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var enter = keyboard_check_pressed(vk_enter);

// Se este for o botão atualmente selecionado no menu
if (meu_id == global.opcao_selecionada) 
{
    
    // Se o motor ainda não ligou, ele fica amarelo padrão
    if (comecou_cronometro == false) 
    {
        image_index = 1;
    }

    // A Ignição: Apertou enter, liga o cronômetro
    if (enter) 
    {
        comecou_cronometro = true;
        // Cria a layer se ela não existir para não dar o erro de antes
        if (!layer_exists("Transicao")) 
        {
            layer_create(-1000, "Transicao");
        }
        // Cria a transição bem no momento do clique
        layer_sequence_create("Transicao", 0, 0, sq_transicao1);
    }

    // O Movimento: Se o cronômetro ligou, ele corre solto aqui
    if (comecou_cronometro == true) 
    {
        image_index = 2; // Força o frame Verde
        tempo_anim++;    // Sobe o tempo frame por frame
        
        // Se estourar o limite de tempo, muda de sala
        if (tempo_anim >= tempo_anim_limite) 
        {
            
           if (meu_id == 0) 
           {
            //se meu id for igual a zero então vou pro jogo 
               room_goto(rm_jogo); // Botão de cima vai pro jogo
               audio_stop_sound(snd_menu)
           }
           else if (meu_id == 1) 
           {
            //Senao se meu id for igual a 1 então vou pra loja
               room_goto(rm_loja); 
           }
           else if (meu_id == 2) 
           {
            //Senao se meu id for igual a 2 então eu volto para o menu
                room_goto(rm_menu);
                show_debug_message("ENTER APERTADO NA LOJA!")
            
           } 
        }
    }
} 
else 
{
    // Se o botão não está selecionado, fica vermelho e reseta o tempo dele
    image_index = 0;
    tempo_anim = 0;
    comecou_cronometro = false;
}