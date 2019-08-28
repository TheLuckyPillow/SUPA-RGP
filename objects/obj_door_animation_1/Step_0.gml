if (place_meeting(x,y,obj_Player) && !flag)
{
	image_speed = 1;
}
if (image_index == 3)
{
	image_speed = 0;
	flag = true;
}