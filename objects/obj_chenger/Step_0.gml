if(keyboard_check(vk_anykey))
{
	if(global.change_key="up")
	global.up = keyboard_lastkey;
	if(global.change_key="down")
	global.down = keyboard_lastkey;
	if(global.change_key="left")
	global.left = keyboard_lastkey;
	if(global.change_key="right")
	global.right = keyboard_lastkey;
	if(global.change_key="sprint")
	global.sprint = keyboard_lastkey;
	instance_destroy();
	global.change_key ="";
}