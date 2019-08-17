/// @description Insert description here
// You can write your code in this editor


freeCam = keyboard_check(vk_f8);
if(freeCam)
{
	obj_Player.x -= obj_Player.x_offset;
	obj_Player.y -= obj_Player.y_offset;
	x +=(keyboard_check(ord("D")) - keyboard_check(ord("A"))) * 10;
	y +=(keyboard_check(ord("S")) - keyboard_check(ord("W"))) * 10;
}
else
{
	x = clamp(x, follow_obj.x-horizontal_border,  follow_obj.x+horizontal_border);
	y = clamp(y, follow_obj.y-vertical_border, follow_obj.y+vertical_border);
}