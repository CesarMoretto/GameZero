/// @description Insert description here
// You can write your code in this editor


//Inputs usuario
up		= keyboard_check(vk_up);
down	= keyboard_check(vk_down);
right	= keyboard_check(vk_right);
left	= keyboard_check(vk_left);

//Aplicando inputs de velocidade
//O resultado da conta vai ser 0, -1 ou 1
velv	= (down - up) * vel;

//Velocidade Horizontal
velh	= (right - left) * vel;