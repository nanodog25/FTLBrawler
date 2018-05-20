layer_create(0, _abilityList);

for(var i = 0; i < ds_list_size(global.AbilitiesAvailable); i++)
{
	var text = global.AbilitiesAvailable[| i];
	var ability = instance_create_layer(view_wview[0]*0.20 + i * 150, view_hview[0]*0.8, _abilityList, obj_button_ability);
	with(ability)
	{
		_text = text;
		_cost = global.AbilitiesCost[| i];
		_isActive = ds_list_find_index(global.AbilitiesActive, text) != -1;
	}
	
	ds_list_add(_abilityListObjects, ability);
}