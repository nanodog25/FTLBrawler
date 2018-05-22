if (global.ItemActivated != global.ItemNone)
{
	if (global.isFightInitiated)
		ds_list_add(global.ItemsUsed, global.ItemActivated);
	
	ActivateItem(GetItem(global.ItemActivated));
	
	global.ItemActivated = global.ItemNone;
}