
event_inherited();
	mp_path = path_add();

if(hp<=0)
{
	instance_destroy();
}


	if (seen_player == true && o=0 && k=0)
{
	if(mp_grid_path(global.mp_grid,mp_path,x,y,obj_Player.x,obj_Player.y,1))
	path_start(mp_path,4,0,true)
	if(direction=90)  dir_enemy =3;
	if(direction=270)  dir_enemy =1;
	if(direction>=0 && direction <90 || direction <= 360 && direction > 270)  dir_enemy =4;
	if(direction>90 && direction <270)  dir_enemy =2;
	
}

if (!collision_line(x,y,obj_Player.x,obj_Player.y,obj_Collision,true,true) && distance_to_object(obj_Player)<=300)
seen_player = true;


if(distance_to_object(obj_Player)>500)

	seen_player = false;


if (seen_player == false )
{
	ready_for_at = false;
	if(mp_grid_path(global.mp_grid,mp_path,x,y,start_x,start_y,1))
	path_start(mp_path,4,path_action_stop,true);
	
}

//if(distance_to_object(obj_Player)<200 &&!collision_line(x,y,obj_Player.x,obj_Player.y,obj_Collision,true,true)) {ready_for_at = true; k =1}
if(distance_to_object(obj_Player)<=3 ) {o = 1; ready_for_at = true;}
else o = 0;
if(distance_to_object(obj_Player)>200) ready_for_at = false;
if (o=1 || k =1) path_end();
if(ready_for_at && !coldown)
{    
	
	
	alarm[0]=room_speed*0.5;
	coldown = true;
}

num = instance_number(obj_hitbox); 
for (i = 0; i < num; i += 1) { 
    find = instance_find(obj_hitbox, i); 
    if (find.hitbox_creator = self) { 
      find.x = x;
	  find.y = y;
    } 
}

