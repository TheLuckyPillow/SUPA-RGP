
var _id = argument0;
var indexAddedAt = -2;

if(array_find_Index(InventoryManager.inventory, _id) == -1)
{
	indexAddedAt = array_replace_value(InventoryManager.inventory, ItemId.none, _id);
	
}

if(indexAddedAt != -1)
	InventoryManager.itemDefinitions[_id, ItemProperties.amount] +=1;
	
return(indexAddedAt != -1);