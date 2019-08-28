if(!save && !change)
{
	show_up = "W";
    show_down = "S";
    show_left = "A";
    show_right = "D";
    show_sprint = "Shift";
}

if(global.change_key="up" && keyboard_check(vk_anykey))
{
	change = true;
	show_up = keyboard_lastchar;
	
}

if(global.change_key="down" && keyboard_check(vk_anykey))
{
	change = true;
	show_down = keyboard_lastchar;
	
}

if(global.change_key="left" && keyboard_check(vk_anykey))
{
	change = true;
	show_left = keyboard_lastchar;
	
}

if(global.change_key="right" && keyboard_check(vk_anykey))
{
	change = true;
	show_right = keyboard_lastchar;
	
}

if(global.change_key="sprint" && keyboard_check(vk_anykey))
{
	change = true;
	show_sprint = keyboard_lastchar;
	
}