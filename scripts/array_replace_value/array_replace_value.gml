
var _arr = argument0;
var _oldVal = argument1;
var _newVal = argument2;

var _indexToReplace = array_find_Index(_arr, _oldVal);

if(_indexToReplace == -1)
return -1;

_arr[@ _indexToReplace] = _newVal;