/// @description Insert description here
// You can write your code in this editor

depth = -1; 
scale = 2; //Масшабирование
show_hud = true;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

stam_UI_width = 120;
stam_UI_height = 20;

//--------Спрайты
spr_stamina = spr_Stamina;

//---------Координаты прорисовки

stam_UI_x =  10 * scale;
stam_UI_y = gui_height - stam_UI_height * scale;

stam_UI_line_x =  10 * scale + 5 * scale;
stam_UI__line_y = gui_height - (stam_UI_height * scale * 0.5) - 5 * scale;