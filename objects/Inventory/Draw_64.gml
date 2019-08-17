if(!show_inventory) exit;
//---------Прорисовка инвентаря
draw_sprite_part_ext(
spr_inv_UI, 0, cell_size, 0, inv_UI_width,
inv_UI_height, inv_UI_x, inv_UI_y, scale, scale , c_white, 1)

//--------Прорисовка информации

draw_set_font(fnt_Text_24);
var c = c_black;
var info_grid = ds_player_info;
draw_text_color(info_x, info_y, info_grid[# 0,3] + ": " + info_grid[# 1,3], c,c,c,c, 1)

//--------Прорисовка предметов
var ii, ix, iy, xx, yy, sx, sy, iitem, inv_grid;
ii = 0; ix = 0; iy = 0; inv_grid = ds_inventory;
repeat(inv_slots){
	 //x,y размещение слота
	 xx = slots_x + ((cell_size + x_buffer)*ix*scale);
	 yy = slots_y + ((cell_size + y_buffer)*iy*scale);
	 //Предмет
	 iitem = inv_grid[# 0, ii];
	 sx = (iitem mod spr_inventory_items_columns) * cell_size;
	 sy = (iitem div spr_inventory_items_columns) * cell_size;
	 //Рисование
	 draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, xx, yy, scale, scale, c_white, 1);
	 if(iitem > 0)draw_sprite_part_ext(
	 spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy , scale, scale, c_white,1
	 );
	 //Кол-во предметов
	 if(iitem > 0){
		var number = inv_grid[# 1, ii];
		draw_text_color(xx, yy, string(number), c,c,c,c,1);
	 }
	 
	 //Инкримент
	ii += 1;
	ix =  ii mod inv_slots_width;
	iy =  ii div inv_slots_width;
	
}