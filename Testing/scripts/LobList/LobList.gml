for(var i = 0; i < ds_list_size(global.LobAvailable); i++)
{
	var text = global.LobAvailable[| i];
	var lob = instance_create_layer(view_wview[0]*0.20 + i * 150, view_hview[0]*0.2, _page2, obj_button_upgrade);
	lob._text = text;
	lob._isActive = IsLobActive(text);
	lob._obj = GetLob(text);
	
	ds_list_add(_lobListObjects, lob);
}