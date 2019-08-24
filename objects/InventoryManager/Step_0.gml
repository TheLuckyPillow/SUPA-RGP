if(keyboard_check_pressed(ord("I"))){show_inventory = !show_inventory;}

if(!show_inventory) exit;

if(keyboard_check_pressed(ord("M")))
	{	var _idtouse = inventory[selected_slot];
		inv_useItem(_idtouse);
	}

#region Выбор предмета
mousex = device_mouse_x_to_gui(0);
mousey = device_mouse_y_to_gui(0);

var cell_xbuff = (cell_size + x_buffer) * scale;
var cell_ybuff = (cell_size + y_buffer) * scale;

var i_mousex = mousex - slots_x;
var i_mousey = mousey - slots_y;

var nx = i_mousex div cell_xbuff;
var ny = i_mousey div cell_ybuff;

var mouse_in_inventory = true;
var mouse_in_equipment = true;
if(nx >= 0 and nx < inv_slots_width and ny >= 0 and ny < inv_slots_height) {
	var sx = i_mousex - (nx*cell_xbuff);
	var sy = i_mousey - (ny*cell_ybuff);
	
	if((sx < cell_size*scale) and (sy < cell_size*scale)){
	m_slotx = nx;
	m_sloty = ny; 
	}
}else {mouse_in_inventory = false;}
selected_slot = min(inv_slots - 1, m_slotx + (m_sloty*inv_slots_width));
#endregion

#region Действия с инвентарём
var ss_item = inventory[selected_slot];

if(pickup_slot != -1){
	if(mouse_check_button_pressed(mb_left)){
		if(!mouse_in_inventory){
			#region Выбрасывание №1
			var pitem = inventory[pickup_slot];
			itemDefinitions[pitem,ItemProperties.amount] -=1;
			if(itemDefinitions[pitem,ItemProperties.amount] == 0){
			inventory[pickup_slot] = ItemId.none; 
			inv_RemoveItem(pitem);
			pickup_slot = -1;
		}
			//Создание предмета
			instance_create_layer(obj_Player.x, obj_Player.y, "Instances", itemDefinitions[pitem,ItemProperties.obj]);
			show_debug_message("ВЫ ПОТЕРЯЛИ ДОРОГОСТОЯЩЕЕ ОБМУДИРОВАНИЕ!!!")
			#endregion
		}else if(ss_item == ItemId.none) { //Вставка в пустой слот
			inventory[selected_slot] = inventory[pickup_slot];
			inventory[pickup_slot] = ItemId.none;
			pickup_slot = -1;
		}else if (ss_item == inventory[pickup_slot]){ //Вставка в текущий слот
			pickup_slot = -1;
		}else{ //Вставка в слот с другим элементом
			inventory[selected_slot] = inventory[pickup_slot];
			inventory[pickup_slot] = ss_item;
			pickup_slot = -1; //Можно убрать, чтобы выбирался предмет, с которым меняешь
		}
	}

}
else if(ss_item != ItemId.none){
#region Выбрасывание №1
	if(mouse_check_button_pressed(mb_middle)){
		var _id = inventory[selected_slot];
		itemDefinitions[_id,ItemProperties.amount] -=1;
		if(itemDefinitions[_id,ItemProperties.amount] == 0){
			inventory[selected_slot] = ItemId.none; 
			inv_RemoveItem(_id);
		}
		//Создание предмета
		instance_create_layer(obj_Player.x, obj_Player.y, "Instances", itemDefinitions[_id,ItemProperties.obj]);

		show_debug_message("ВЫ ПОТЕРЯЛИ ДОРОГОСТОЯЩЕЕ ОБМУДИРОВАНИЕ!!!");
	}
	if(mouse_check_button_pressed(mb_right)){
		pickup_slot = selected_slot;
	}
}
#endregion
#endregion
