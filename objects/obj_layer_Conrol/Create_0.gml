///@desc init grid and layers

//set the cell size based on slowest mover speed (POW2)
global.CELL = 4;

//set the grid height
global.GRID_H = room_height div global.CELL; //512

//create the grid
global.layerGrid = ds_grid_create(1, global.GRID_H);

//create the layers and assign them to a grid cell
for (var i = 0; i < global.GRID_H; i++)
{
	global.layerGrid[# 0, i] = layer_create(layer_get_depth("sort_begin") - i);
}