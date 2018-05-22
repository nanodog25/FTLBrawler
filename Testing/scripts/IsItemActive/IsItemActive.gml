///@arg item

var item = argument0;

var isActive = ds_list_find_index(global.ItemsActive, item) != -1;

if (isActive)
{
	with(GetItem(item))
		event_user(2);
}

return isActive;