///@arg item

var item = argument0;

var isActive = ds_list_find_index(global.ItemsActive, item) != -1;

if (isActive)
	ds_list_add(global.ItemsUsedThisStep, item);

return isActive;