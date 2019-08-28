if(other.hitbox_creator.id != creator)
{
	if(other.hitbox_creator.id=obj_Player.id)
	obj_Player.pl_health -= 10;
	instance_destroy()
}


