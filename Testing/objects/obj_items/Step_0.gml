if (global.ItemActivated != global.ItemNone)
{
	if (global.isFightInitiated)
		ds_list_add(global.ItemsUsed, global.ItemActivated);
	
	ApplyItemEffect();
	
	global.ItemActivated = global.ItemNone;
}