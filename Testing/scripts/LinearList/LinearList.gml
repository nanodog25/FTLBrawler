for(var i = 0; i < ds_list_size(global.LinearAvailable); i++)
{
	var text = global.LinearAvailable[| i];
	var linear = instance_create_layer(view_wview[0]*0.20 + i * 150, view_hview[0]*0.5, _page2, obj_button_upgrade);
	
	linear._text = text;
	linear._isActive = IsLinearActive(text);
	linear._obj = GetLinear(text);
	
	ds_list_add(_linearListObjects, linear);
}