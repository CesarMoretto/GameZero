//Iniciando o primeiro estado
estado_idle = new estado();


//Iniciando o estado walk
estado_walk = new estado();


#region estado_idle
//Estado idle precisa de um inicia
estado_idle.inicia = function()
{
	
	//Definindo a sprite atual com base na direção que o player olha
	var _sprite = define_sprite(dir, spr_player_idle_side, spr_player_idle_front, spr_player_idle_back);

//Ajustando a sprite
	sprite_index = _sprite;

//Garantindo que a animação começa no primeiro frame
	image_index = 0;

}



estado_idle.roda = function()
{
	
	//Achando a condição para eu SAIR desse estado
	
	//SE eu estiver em movimento, então eu vou para o estado de walk
	if (up xor down or left xor right)
	{
		troca_estado(estado_walk);
	}
}
#endregion


#region estado_walk
estado_walk.inicia = function()
{
	
	dir		= (point_direction(0,0, right - left, down - up) div 90);
//Definindo a sprite



//Configurando a sprite
	sprite_index = define_sprite(dir, spr_player_walk_side, spr_player_walk_front, spr_player_walk_back);
	
	//Começando a animação do começo
	image_index = 0;
}

estado_walk.roda = function()
{
	
dir		= (point_direction(0,0, velh, velv) div 90);


//Ajustando lado que olha

if(velh != 0)
{
image_xscale = sign(velh);
}
//definindo a sprite
sprite_index = define_sprite(dir, spr_player_walk_side, spr_player_walk_front, spr_player_walk_back);


//Movendo
//Velocidade vertical
velv	= (down - up) * vel;
//Velocidade Horizontal
velh	= (right - left) * vel;

//Saindo do estado
//Se estou parado vou para estado de idle
if(velh == 0 && velv == 0)
{
	troca_estado(estado_idle);
}

}

#endregion


//Iniciar Variaveis
#region iniciando variáveis
//Controles iniciados sem valor
up = noone;
down = noone;
left = noone;
right = noone;

//Variaveis de movimento
//Iniciando Parado
velh = 0;
velv = 0;

//Velocidade do Jogador
vel = 2;

//Controlando a direção do player
dir = 0;

#endregion
//Iniciando minha máquina de estados
inicia_estado(estado_idle);
