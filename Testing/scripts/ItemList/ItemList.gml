layer_create(0, _itemList);

for(var i = 0; i < ds_list_size(global.ItemsReserved); i++)
{
	var item = instance_create_layer(view_wview[0]*0.80, view_hview[0]*0.25 + i * 96, _itemList, obj_button_item);
	with(item)
		_text = global.ItemsReserved[| i];
		
	ds_list_add(_itemListObjects, item);
}