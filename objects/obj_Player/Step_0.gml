/// @description Insert description here
// You can write your code in this editor

event_inherited();
//---------------------------- ОБНОВЛЕНИЕ ВХОДНЫХ ЗНАЧЕНИЙ
input_left = keyboard_check(ord("A"));
input_right = keyboard_check(ord("D"));
input_up = keyboard_check(ord("W"));
input_down = keyboard_check(ord("S"));

if (keyboard_check_pressed(vk_lshift)) input_shift_on = true;
input_shift_press = keyboard_check(vk_lshift);

if (x_offset != 0 || y_offset != 0) pl_is_moving = true; // обновление is_moving

//---------------------------- ОБНОВЛЕНИЕ СКОРОСТИ
if (pl_stamina > 0 && input_shift_press && input_shift_on)
{
	pl_speed = pl_runSpeed;
	if (pl_is_moving) pl_stamina -= pl_stamina_spend_multiplyer;
}
else
{
	pl_speed = pl_walkSpeed;
	input_shift_on = false;
	if (pl_stamina < pl_stamina_max) pl_stamina +=1;
}

//---------------------------- СБРОС ПЕРЕМЕННЫХ
x_offset = 0;
y_offset = 0;

//---------------------------- ОБНОВЛЕНИЕ ДИЖЕНИЯ
x_offset = (input_right - input_left) * pl_speed;
y_offset = (input_down - input_up) * pl_speed;

//---------------------------- КОЛЛИЗИЯ
//---- HORISONTAL
if(place_meeting(x+x_offset, y, obj_Collision))
{
	repeat (abs (x_offset))
	{
		if (!place_meeting(x+sign(x_offset), y, obj_Collision)) x += sign(x_offset);
		else break;
	}
	x_offset = 0;
}
//---- VERTICAL
if(place_meeting(x, y + y_offset, obj_Collision))
{
	repeat (abs (y_offset))
	{
		if (!place_meeting(x, y+sign(y_offset), obj_Collision)) y += sign(y_offset);
		else break;
	}
	y_offset = 0;
}
//---------------------------- ПРИМИНЕНИЕ ДВИЖЕНИЯ
x += x_offset;
y += y_offset;

//--------------------ПРОВЕРКА ЭКИПИРОВКИ

pl_incr_health = armor_health + legs_health + head_health;
pl_health_max = 100 + pl_incr_health;
if(pl_health > pl_health_max)
	pl_health = pl_health_max;
