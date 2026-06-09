/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(global.skin_equipada == id_ave)
{
    image_speed = 0.9
}
else
{
    image_index = 0
    image_speed = 0
}

if (oLoja.lista[id_ave] == 0)
{
    image_blend = c_black; // Fica como uma silhueta escura
    // Ou use image_alpha = 0.5 para deixar meio transparente
}
else
{
    image_blend = c_white; // Ganha a cor normal dela
    image_alpha = 1;
}