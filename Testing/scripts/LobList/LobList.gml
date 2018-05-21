for(var i = 0; i < ds_list_size(global.LobAvailable); i++)
{
	var text = global.LobAvailable[| i];
	var lob = instance_create_layer(view_wview[0]*0.20 + i * 150, view_hview[0]*0.2, _page2, obj_button_ability);
	with(lob)
	{
		_text = text;
		_cost = global.LobCost[| i];
		_isActive = ds_list_find_index(global.LobActive, text) != -1;
	}
	
	ds_list_add(_lobListObjects, lob);
}