for(var i = 0; i < ds_list_size(global.AbilitiesAll); i++)
{
	var text = global.AbilitiesAll[| i];
	var ability = instance_create_layer(view_wview[0]*0.20 + i * 150, view_hview[0]*0.8, _page1, obj_button_upgrade);
	ability._obj = GetAbility(text);
	ability._text = text;
	ability._isActive = IsAbilityActive(text);

	ds_list_add(_abilityListObjects, ability);
}