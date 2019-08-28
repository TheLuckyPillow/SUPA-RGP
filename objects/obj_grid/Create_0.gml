var cell_width = 8;
var cell_height =8;
var hcells=room_width div cell_width;
var vcells = room_height div cell_height;

global.mp_grid = mp_grid_create(0,0,hcells,vcells,cell_width,cell_height);

mp_grid_add_instances(global.mp_grid,obj_Collision,true);