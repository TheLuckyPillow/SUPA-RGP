/// @description Insert description here
// You can write your code in this editor
var anim_lenth = 9;
var frame_size = 64;
var anim_speed = 12;
var xx = x - x_spr_offset;
var yy = y - y_spr_offset;


if      (x_offset < 0) y_frame = 9;
else if (x_offset > 0) y_frame = 11;
else if (y_offset < 0) y_frame = 8;
else if (y_offset > 0) y_frame = 10;
else				   x_frame = 0;
//------------------DRAW CHARACTER BASE
draw_sprite_part(spr_base, 0, floor(x_frame)*frame_size,y_frame * frame_size,frame_size,frame_size,xx,yy);
//------------------DRAW CHARACTER FEET
draw_sprite_part(spr_feet, 0, floor(x_frame)*frame_size,y_frame * frame_size,frame_size,frame_size,xx,yy);
//------------------DRAW CHARACTER LEGS
draw_sprite_part(spr_legs, 0, floor(x_frame)*frame_size,y_frame * frame_size,frame_size,frame_size,xx,yy);
//------------------DRAW CHARACTER SHIRT
draw_sprite_part(spr_torso1, 0, floor(x_frame)*frame_size,y_frame * frame_size,frame_size,frame_size,xx,yy);
draw_sprite_part(spr_torso2, 0, floor(x_frame)*frame_size,y_frame * frame_size,frame_size,frame_size,xx,yy);
draw_sprite_part(spr_torso3, 0, floor(x_frame)*frame_size,y_frame * frame_size,frame_size,frame_size,xx,yy);
//------------------DRAW CHARACTER HAIR
draw_sprite_part(spr_hair, 0, floor(x_frame)*frame_size,y_frame * frame_size,frame_size,frame_size,xx,yy);


if (x_frame < anim_lenth -1)
{
	x_frame += anim_speed / 60;
}
else 
{
	x_frame = 1;
}

draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow,c_yellow,c_yellow,c_yellow, true);