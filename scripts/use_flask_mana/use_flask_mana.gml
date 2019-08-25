var _plusmana = 50;
var _difmana = obj_Player.pl_mana_max - obj_Player.pl_mana;
if(obj_Player.pl_mana == obj_Player.pl_mana_max)
{
	show_debug_message("У вас уже макс хп");
	return;
}else if(_plusmana > _difmana)
	{obj_Player.pl_mana += _difmana;}
else{
	obj_Player.pl_mana += _plusmana;
}