/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
var anim_lenth = 9;
var frame_size = 64;
var anim_speed = 12;
var xx = x - x_enemy_spr_offset;
var yy = y - y_enemy_spr_offset;


if      (dir_enemy=2) y_enemy_frame = 9;
else if (dir_enemy=4) y_enemy_frame = 11;
else if (dir_enemy=3) y_enemy_frame = 8;
else if (dir_enemy=1) y_enemy_frame = 10;
else				   x_enemy_frame = 0;
//------------------DRAW CHARACTER BASE
draw_sprite_part(spr_enemy_base, 0, floor(x_enemy_frame)*frame_size,y_enemy_frame * frame_size,frame_size,frame_size,xx,yy);
//------------------DRAW CHARACTER FEET
draw_sprite_part(spr_enemy_feet, 0, floor(x_enemy_frame)*frame_size,y_enemy_frame * frame_size,frame_size,frame_size,xx,yy);
//------------------DRAW CHARACTER LEGS
draw_sprite_part(spr_enemy_legs, 0, floor(x_enemy_frame)*frame_size,y_enemy_frame * frame_size,frame_size,frame_size,xx,yy);
//------------------DRAW CHARACTER SHIRT
draw_sprite_part(spr_enemy_torso1, 0, floor(x_enemy_frame)*frame_size,y_enemy_frame * frame_size,frame_size,frame_size,xx,yy);
draw_sprite_part(spr_enemy_torso2, 0, floor(x_enemy_frame)*frame_size,y_enemy_frame * frame_size,frame_size,frame_size,xx,yy);
draw_sprite_part(spr_enemy_torso3, 0, floor(x_enemy_frame)*frame_size,y_enemy_frame * frame_size,frame_size,frame_size,xx,yy);
//------------------DRAW CHARACTER HAIR
draw_sprite_part(spr_enemy_hair, 0, floor(x_enemy_frame)*frame_size,y_enemy_frame * frame_size,frame_size,frame_size,xx,yy);


if (x_enemy_frame < anim_lenth -1)
{
	x_enemy_frame += anim_speed / 60;
}
else 
{
	x_enemy_frame = 1;
}

draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow,c_yellow,c_yellow,c_yellow, true);