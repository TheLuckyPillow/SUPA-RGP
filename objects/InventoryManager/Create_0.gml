inv_Enums();
inv_Initialize();

depth = -1; 
scale = 2; //Масшабирование
show_inventory = false;

inv_slots = MAX_INV_ITEMS; //Кол-во слотов
inv_slots_width = 8; 
inv_slots_height = 3;

selected_slot = 0;
pickup_slot =-1;
selected_eq_slot = 0;

m_slotx = 0;
m_sloty = 0;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

cell_size = 32;

inv_UI_width = 288;
inv_UI_height = 192;


//--------Спрайты
spr_inv_UI = spr_inventory_UI;

//---------Координаты прорисовки
inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5 * scale) -230;
inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5 * scale);

info_x = inv_UI_x + (9 * scale);
//info_y = inv_UI_y + (9 * scale);
inv_equip_x = inv_UI_x + (inv_UI_width*scale)+ (9 * scale);

slots_x = info_x;
slots_y = inv_UI_y + (40 * scale);

x_buffer = 2;
y_buffer = 4;