var _id = argument0;
var _itemScript = InventoryManager.itemDefinitions[_id, ItemProperties.useScript];

script_execute(_itemScript);
if(InventoryManager.itemDefinitions[_id, ItemProperties.equip])
	return;
else
inv_RemoveItem(_id);