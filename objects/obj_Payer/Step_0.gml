/// @description Insert description here
// You can write your code in this editor

//---------------------------- ОБНОВЛЕНИЕ ВХОДНЫХ ЗНАЧЕНИЙ
input_left = keyboard_check(ord("A"));
input_right = keyboard_check(ord("D"));
input_up = keyboard_check(ord("W"));
input_down = keyboard_check(ord("S"));

input_shift = keyboard_check(vk_lshift);

//---------------------------- ОБНОВЛЕНИЕ СКОРОСТИ
if (input_shift) pl_speed = pl_runSpeed;
else pl_speed = pl_walkSpeed;

//---------------------------- СБРОС ПЕРЕМЕННЫХ
x_offset = 0;
y_offset = 0;

//---------------------------- ОБНОВЛЕНИЕ ДИЖЕНИЯ
x_offset = (input_right - input_left) * pl_speed;
y_offset = (input_down - input_up) * pl_speed;

//---------------------------- КОЛЛИЗИЯ
//---- HORISONTAL
if(place_meeting(x+x_offset, y, obj_Wall))
{
	repeat (abs (x_offset))
	{
		if (!place_meeting(x+sign(x_offset), y, obj_Wall)) x += sign(x_offset);
		else break;
	}
	x_offset = 0;
}
//---- VERTICAL
if(place_meeting(x, y + y_offset, obj_Wall))
{
	repeat (abs (y_offset))
	{
		if (!place_meeting(x, y+sign(y_offset), obj_Wall)) y += sign(y_offset);
		else break;
	}
	y_offset = 0;
}
//---------------------------- ПРИМИНЕНИЕ ДВИЖЕНИЯ
x += x_offset;
y += y_offset;