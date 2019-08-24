
var _EquipId = argument0;
var _Slot = argument1;

if(equipment[_Slot] != ItemId.none)
{
	var temp = inventory[_EquipId];
	inventory[_EquipId] = equipment[_Slot];
	equipment[_Slot] = temp;
}else{equipment[_Slot] = inventory[_EquipId];
	  inventory[_EquipId] = ItemId.none;}
