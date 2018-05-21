for(var i = 0; i < ds_list_size(global.AttacksAvailable); i++)
{
	var text = global.AttacksAvailable[| i];
	var attack = instance_create_layer(view_wview[0]*0.20 + i * 150, view_hview[0]*0.8, _page2, obj_button_ability);
	with(attack)
	{
		_text = text;
		_cost = global.AttacksCost[| i];
		_isActive = ds_list_find_index(global.AttacksActive, text) != -1;
	}
	
	ds_list_add(_fistListObjects, attack);
}