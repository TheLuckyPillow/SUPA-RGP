///@desc Добавление свойств итему
///@param Тип итема
///@param Имя 
///@param Кол-во
///@param Спрайт
///@param Скрипт
//@param Объект

var _idItem = argument0;
var _nameItem = argument1;
var _amountItem = argument2;
var _spriteItem = argument3;
var _scriptItem = argument4;
var _objItem = argument5;
var _equip = argument6;
itemDefinitions[_idItem, ItemProperties.name] = _nameItem;
itemDefinitions[_idItem, ItemProperties.amount] = _amountItem;
itemDefinitions[_idItem, ItemProperties.sprite] = _spriteItem;
itemDefinitions[_idItem, ItemProperties.useScript] = _scriptItem;
itemDefinitions[_idItem, ItemProperties.obj] = _objItem;
itemDefinitions[_idItem, ItemProperties.equip] = _equip;