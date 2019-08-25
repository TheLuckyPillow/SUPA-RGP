var _plusstam = 50;
var _difstam = obj_Player.pl_stamina_max - obj_Player.pl_stamina;
if(obj_Player.pl_stamina == obj_Player.pl_stamina_max)
{
	show_debug_message("У вас уже макс хп");
	return;
}else if(_plusstam > _difstam)
	{obj_Player.pl_stamina += _difstam;}
else{
	obj_Player.pl_stamina += _plusstam;
}