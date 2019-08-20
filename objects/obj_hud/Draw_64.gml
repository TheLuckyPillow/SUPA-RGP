/// @description Insert description here
// You can write your code in this editor

//UPDATE
stamina_scaled = obj_Player.pl_stamina / (obj_Player.pl_stamina_max / 100) * scale;
health_scaled = obj_Player.pl_health / (obj_Player.pl_health_max / 100) * scale;

//---------------------------- STAMINA UI
draw_sprite_part_ext(spr_stamina, 0, 0, 0, stam_UI_width, stam_UI_height, stam_UI_x, stam_UI_y, scale, scale, c_white, 1);

//---------------------------- STAMINA LINE
if !instance_exists(obj_Player) exit; //если персонаж не существует/мертв — выход

draw_set_color(c_green);
draw_rectangle(stam_UI_line_x,stam_UI__line_y,stam_UI_line_x+stamina_scaled, stam_UI__line_y+(9.5*scale),false);
draw_set_color(c_white);


//---------------------------- HEALTH UI
draw_sprite_part_ext(spr_health, 0, 0, 0, hp_UI_width, hp_UI_height, hp_UI_x, hp_UI_y, scale, scale, c_white, 1);

//---------------------------- HEALTH LINE
if !instance_exists(obj_Player) exit; //если персонаж не существует/мертв — выход

draw_set_color(c_red);
draw_rectangle(hp_UI_line_x,hp_UI__line_y,hp_UI_line_x+health_scaled, hp_UI__line_y+(9.5*scale),false);
draw_set_color(c_white);