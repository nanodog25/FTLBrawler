for(var i = 0; i < ds_list_size(global.ItemsReserved); i++)
{
	var item = instance_create_layer(view_wview[0]*0.80, view_hview[0]*0.25 + i * 96, _page1, obj_button_item);
	item._obj = GetItem(global.ItemsReserved[| i]);
	item._text = global.ItemsReserved[| i];
		
	ds_list_add(_itemListObjects, item);
}