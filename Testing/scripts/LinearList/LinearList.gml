for(var i = 0; i < ds_list_size(global.LinearAvailable); i++)
{
	var text = global.LinearAvailable[| i];
	var linear = instance_create_layer(view_wview[0]*0.20 + i * 150, view_hview[0]*0.5, _page2, obj_button_ability);
	with(linear)
	{
		_text = text;
		_cost = global.LinearCost[| i];
		_isActive = ds_list_find_index(global.LinearActive, text) != -1;
	}
	
	ds_list_add(_linearListObjects, linear);
}