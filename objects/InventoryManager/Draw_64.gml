if(!show_inventory) exit;
var frame_size = 64;

draw_set_font(fnt_Text_24);
var c = c_black;
//---------Прорисовка инвентаря
draw_sprite_part_ext(
spr_inv_UI, 0, cell_size, 0, inv_UI_width,
inv_UI_height, inv_UI_x, inv_UI_y, scale, scale , c_white, 1);
draw_sprite_ext(spr_inv_charset, 0, inv_UI_x + (inv_UI_width*scale), inv_UI_y, scale, scale, 0, c_white, 1);
//Прорисовка инвентаря
var ii, ix, iy, xx, yy;
ii = 0; ix = 0; iy = 0;
for(i = 0; i < MAX_INV_ITEMS; i++)
{
	 itemDefIndex = inventory[i];
	 //Точка отрисовки предмета
	 xx = slots_x + ((cell_size + x_buffer)*ix*scale);
	 yy = slots_y + ((cell_size + y_buffer)*iy*scale);
	 
	 //Пустые слоты
	 draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, xx, yy, scale, scale, c_white, 1);
	 
	 //Сами предметы (рофл,если убрать if)
	 switch(ii){
		 case selected_slot: 
		 if(itemDefIndex != ItemId.none){
	 draw_sprite_ext(itemDefinitions[itemDefIndex, ItemProperties.sprite],0, xx, yy,scale, scale,0, c_white, 1);
	 gpu_set_blendmode(bm_add);
			draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, xx, yy, scale, scale, c_white, .3);
			gpu_set_blendmode(bm_normal);}
			break;
			
			case pickup_slot:
			 if(itemDefIndex != ItemId.none)
	 draw_sprite_ext(itemDefinitions[itemDefIndex, ItemProperties.sprite],0, xx, yy,scale, scale,0, c_white, 0.2);
	 break;
			
			
			default:
	 if(itemDefIndex != ItemId.none){
	 draw_sprite_ext(itemDefinitions[itemDefIndex, ItemProperties.sprite],0, xx, yy,scale, scale,0, c_white, 1);}
	 }
	 //Кол-во предметов
	 if(itemDefIndex != ItemId.none){
	 var number = itemDefinitions[itemDefIndex, ItemProperties.amount];
	 draw_text_color(xx, yy, string(number), c,c,c,c,1);}
	ii+= 1;
	ix =  ii mod inv_slots_width;
	iy =  ii div inv_slots_width
}
var ey = 0;
for(j = 0; j < EQUIP_ITEMS; j++)
{
	ItemEqIndex = equipment[j];
	ey = slots_y + ((cell_size + y_buffer)*j*scale);
	
	draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, inv_equip_x, ey, scale, scale, c_white, 1);
	draw_sprite_ext(itemDefinitions[ItemEqIndex, ItemProperties.sprite],0, inv_equip_x, ey,scale, scale,0, c_white, 1);
}

if(pickup_slot != -1){
	var pickid = inventory[pickup_slot];
	draw_sprite_ext(itemDefinitions[pickid, ItemProperties.sprite],0, mousex, mousey,scale, scale,0, c_white, 0.2)//Выбранный элемент возле мыши
	var inum = itemDefinitions[pickid, ItemProperties.amount];
	draw_text_color(mousex + (cell_size*scale*0.2), mousey, string(inum), c,c,c,c,1);
}

//Пресонаж

draw_sprite_part_ext(spr_base, 0, 0,128,frame_size,frame_size,inv_equip_x + (cell_size + 4)*scale,slots_y, scale, scale, c_white,1);
//------------------DRAW CHARACTER FEET
draw_sprite_part_ext(spr_feet, 0, 0,128,frame_size,frame_size,inv_equip_x + (cell_size + 4)*scale,slots_y, scale, scale, c_white,1);
//------------------DRAW CHARACTER LEGS
draw_sprite_part_ext(spr_legs, 0, 0,128,frame_size,frame_size,inv_equip_x + (cell_size + 4)*scale,slots_y, scale, scale, c_white,1);
//------------------DRAW CHARACTER SHIRT
draw_sprite_part_ext(spr_torso1, 0, 0,128,frame_size,frame_size,inv_equip_x + (cell_size + 4)*scale,slots_y, scale, scale, c_white,1);
draw_sprite_part_ext(spr_torso2, 0, 0,128,frame_size,frame_size,inv_equip_x + (cell_size + 4)*scale,slots_y, scale, scale, c_white,1);
draw_sprite_part_ext(spr_torso3, 0, 0,128,frame_size,frame_size,inv_equip_x + (cell_size + 4)*scale,slots_y, scale, scale, c_white,1);
//------------------DRAW CHARACTER HAIR
draw_sprite_part_ext(spr_hair, 0, 0,128,frame_size,frame_size,inv_equip_x + (cell_size + 4)*scale,slots_y, scale, scale, c_white,1);