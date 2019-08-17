depth = -1; 
scale = 2; //Масшабирование
show_inventory = false;

inv_slots = 17;
inv_slots_width = 8;
inv_slots_height = 3;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

cell_size = 32;

inv_UI_width = 288;
inv_UI_height = 192;


//--------Спрайты
spr_inv_UI = spr_inventory_UI;
spr_inv_items = spr_inventory_Items;

spr_inventory_items_columns = sprite_get_width(spr_inv_items)/cell_size;
spr_inventory_iteaaaams_rows = sprite_get_height(spr_inv_items)/cell_size;


//---------Координаты прорисовки
inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5 * scale);
inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5 * scale);

info_x = inv_UI_x + (9 * scale);
info_y = inv_UI_y + (9 * scale);

slots_x = info_x;
slots_y = inv_UI_y + (40 * scale);

x_buffer = 2;
y_buffer = 4;
//----------------------Деняги

ds_player_info = ds_grid_create(2,4);
ds_player_info[# 0,0] = "Gold";
ds_player_info[# 0,1] = "Silver";
ds_player_info[# 0,2] = "Copper";
ds_player_info[# 0,3] = "Name";

ds_player_info[# 1,0] = irandom_range(0,99);
ds_player_info[# 1,1] = irandom_range(0,99);
ds_player_info[# 1,2] = irandom_range(0,99);
ds_player_info[# 1,3] = "DMASTA";

//------------Предметы инвентаря
//0=Предмет
//1=Кол-во

ds_inventory = ds_grid_create(2, inv_slots);

//-----------Предметы
enum item {
	none	= 0,
	qq		= 1,
	ww		= 2,
	ee		= 3,
	rr		= 4,
	tt		= 5,
	yy		= 6,
	uu		= 7,
	ii		= 8,
	oo		= 9,
	pp		= 10,
	aa		= 11,
	ss		= 12,
	dd		= 13,
	ff		= 14,
	gg		= 15,
	hh		= 16,
	height	= 17,
}

var yy = 0; repeat(inv_slots){
	ds_inventory[# 0,yy] = irandom_range(1, item.height - 1);
	ds_inventory[# 1,yy] = irandom_range(1, 10); 
	
	yy += 1;	
}