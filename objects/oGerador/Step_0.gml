/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Fazendo o tempo_spawn ter um aumento de valor
//Ou seja ele irá ganhar mais tempo
tempo_spawn++
//Criando o if para verificar se meu tempo spawn e maior que o tempo spawn limite
if(tempo_spawn >= tempo_spawn_limite)
{
    //Criando um sistema de coordenadas aleatorias
    //para deixar o spawn das arvores melhores
    var coordy = random_range(150, 300)
    //Se ele for maior então ele cria as arvores
    //Criando o spawn das arvores
    var cria_arvores = instance_create_layer(x, coordy, "oObstaculos", oColisor)
    tempo_spawn = 0
    //Resetando o tempo_spawn para poder ter um limite de geração das arvores
}