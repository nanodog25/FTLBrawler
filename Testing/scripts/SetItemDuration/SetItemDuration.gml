///@arg duration

ds_list_add(global.ItemsActive, global.ItemActivated);
	
var index = ds_list_find_index(global.ItemsAvailable, global.ItemActivated);
alarm_set(index, InSeconds(argument0));