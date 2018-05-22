for(var i = 0; i < ds_list_size(global.AttacksAvailable); i++)
{
	var text = global.AttacksAvailable[| i];
	var attack = instance_create_layer(view_wview[0]*0.20 + i * 150, view_hview[0]*0.8, _page2, obj_button_upgrade);

	attack._text = text;
	attack._isActive = IsAttackActive(text);
	attack._obj = GetAttack(text);
	
	ds_list_add(_fistListObjects, attack);
}