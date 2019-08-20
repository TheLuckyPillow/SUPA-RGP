/// @description Insert description here
// You can write your code in this editor

depth = -1; 
scale = 2; //Масшабирование
show_hud = true;

stamina_scaled = obj_Player.pl_stamina / (obj_Player.pl_stamina_max / 100) * scale;
health_scaled = obj_Player.pl_health;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

stam_UI_width = 110;
stam_UI_height = 20;

hp_UI_width = 110;
hp_UI_height = 20;

//--------Спрайты
spr_stamina = spr_Stamina;
spr_health = spr_Health;

//---------Координаты прорисовки

//---stamina
stam_UI_x =  10 * scale;
stam_UI_y = gui_height - stam_UI_height * scale;

stam_UI_line_x =  (10 + 5) * scale;
stam_UI__line_y = gui_height - (stam_UI_height * scale * 0.5) - 5 * scale;

//---health
hp_UI_x = gui_width - hp_UI_width - 60 * scale;
hp_UI_y = gui_height - hp_UI_height * scale;

hp_UI_line_x =  gui_width - hp_UI_width - 60 * scale + 5 * scale;
hp_UI__line_y = gui_height - (hp_UI_height * scale * 0.5) - 5 * scale;
