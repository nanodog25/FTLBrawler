if (global.ItemActivated != global.ItemNone)
{
	if (global.ItemActivated == global.ItemSpeedAura)
	{
		_lane = global.playerLane;
		_colX = global.playerX;
		_colY = global.playerY;
		CreateSpeedAura();
	}
	
	ds_list_add(global.ItemsActive, global.ItemActivated);
	if (global.isFightInitiated)
		ds_list_add(global.ItemsUsed, global.ItemActivated);
	
	var index = ds_list_find_index(global.ItemsAvailable, global.ItemActivated);
	alarm_set(index, InSeconds(5));
	
	global.ItemActivated = global.ItemNone;
}