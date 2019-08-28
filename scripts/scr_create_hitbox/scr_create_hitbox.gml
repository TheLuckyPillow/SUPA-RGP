var x_pos = argument0;
var y_pos = argument1;
var creator = argument2;



var hitbox = instance_create_layer(x_pos,y_pos,"Instances",obj_hitbox);
hitbox.hitbox_creator  = creator;
