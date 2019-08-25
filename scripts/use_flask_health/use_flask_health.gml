var _plushealth = 50;
var _difhp = obj_Player.pl_health_max - obj_Player.pl_health;
if(obj_Player.pl_health == obj_Player.pl_health_max)
{
	show_debug_message("У вас уже макс хп");
	return;
}else if(_plushealth > _difhp)
	{obj_Player.pl_health += _difhp;}
else{
	obj_Player.pl_health += _plushealth;
}