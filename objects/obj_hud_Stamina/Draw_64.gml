/// @description Insert description here
// You can write your code in this editor

//---------------------------- STALINA UI
draw_sprite_part_ext(spr_stamina, 0, 0, 0, stam_UI_width, stam_UI_height, stam_UI_x, stam_UI_y, scale, scale, c_white, 1);

//---------------------------- STAMINA LINE
if !instance_exists(obj_Player) exit; //если персонаж не существует/мертв — выход

draw_set_color(c_green);
draw_rectangle(stam_UI_line_x,stam_UI__line_y,stam_UI_line_x+obj_Player.pl_stamina, stam_UI__line_y+(9*scale),false);
draw_set_color(c_white);