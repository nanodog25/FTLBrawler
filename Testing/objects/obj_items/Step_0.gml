if (global.ItemActivated != global.ItemNone)
{
	if (global.isFightInitiated)
		ds_list_add(global.ItemsUsed, global.ItemActivated);
	
	ActivateItem(GetItem(global.ItemActivated));
	
	global.ItemActivated = global.ItemNone;
}

if (!ds_list_empty(global.ItemsUsedThisStep))
{
	for(var i = 0; i < ds_list_size(global.ItemsUsedThisStep); i++)
	{
		with(GetItem(global.ItemsUsedThisStep[| i]))
			event_user(2);
	}
	
	ds_list_clear(global.ItemsUsedThisStep);
}