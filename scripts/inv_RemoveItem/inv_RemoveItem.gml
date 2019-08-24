

var _id = argument0;

var _indexOfGivenId = array_find_Index(InventoryManager.inventory, _id);

if(_indexOfGivenId != -1)
{
	InventoryManager.itemDefinitions[_id, ItemProperties.amount] -= 1;
	
	if(InventoryManager.itemDefinitions[_id, ItemProperties.amount] <= 0)
	{
		InventoryManager.inventory[_indexOfGivenId] = ItemId.none;
	}
}