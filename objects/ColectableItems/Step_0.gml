if(drop_move){
	x = lerp(x, goal_x, 0.3);
	y = lerp(y, goal_y, 0.3);
	if(abs(x-goal_x) < 1 and abs(y - goal_y) < 1) {drop_move = false;}
} else {if(!keyboard_check(ord("O"))) exit;
	var px = obj_Player.x;
	var py = obj_Player.y;
	var r = 64;
	if(point_in_rectangle(px, py, x-r, y-r, x+r, y+r)){
		r = 2;
		if(!point_in_rectangle(px, py, x-r, y-r, x+r, y+r)){
			x = lerp(x, px, 0.4);
			y = lerp(y, py, 0.4);
		}else{
			var success = inv_AddItem(myItemType);
			if(success)
			instance_destroy();
			show_debug_message("ВЫ БУДЕТЕ СЛУЖИТЬ 510 ЛЕТ!!");
		}
	}
}