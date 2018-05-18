_go = noone;
layer_destroy(_itemWheel);
if (layer_exists(_itemList))
	layer_destroy(_itemList);
ds_list_clear(_itemListObjects);

ExitMenu();