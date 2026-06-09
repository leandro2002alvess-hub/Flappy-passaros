/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var left = keyboard_check_pressed(ord("A"))
var right = keyboard_check_pressed(ord("D"))
var enter = keyboard_check_pressed(vk_enter)
var down = keyboard_check_pressed(ord("S"))

if(global.skin_equipada == 0 && right)
{
    global.skin_equipada = 1
}
else if(global.skin_equipada == 1 && right)
{
    global.skin_equipada = 2
}
else if(global.skin_equipada == 2 && left)
{
    global.skin_equipada = 0
}


if(enter)
{
    with(oItem)
    {
        if(id_ave == global.skin_equipada)
        {
            if(global.coletaveis >= valor && oLoja.lista[id_ave] == 0)
            {
                global.coletaveis -= valor
                oLoja.lista[id_ave] = 1;
            }
            else if(global.skin_equipada)
            {
                show_debug_message("Você já tem essa ave!");
            }
            else 
            {
                show_debug_message("Dinheiro insuficiente!");    
            }
        }
    }
    
}

if(down)
{
    global.opcao_selecionada = 2
    
    if(enter && oBotao.meu_id == 2)
    {
        
        room_goto(rm_menu)
    }
}