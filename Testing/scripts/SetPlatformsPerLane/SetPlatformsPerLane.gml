ds_list_clear(global.LanePlatforms);
ds_list_clear(global.LaneWallsRight);
ds_list_clear(global.LaneWallsLeft);

instance_destroy(PlatformStruct);
instance_destroy(WallStruct);

for(var i=0; i<5;i++)
{
	ds_list_add(global.LanePlatforms, ds_list_create());
	ds_list_add(global.LaneWallsRight, ds_list_create());
	ds_list_add(global.LaneWallsLeft, ds_list_create());
}

for (var i=0; i<ds_list_size(global.objectsInView); i++)
{
	var obj = global.objectsInView[| i];
	if (!instance_exists(obj))
		continue;
	
	var traceStartX = obj.bbox_left;
	var traceStartY = obj.bbox_bottom;
	while (!collision_point(traceStartX, traceStartY, obj, true, false))
	{
		traceStartX++;
	}
	
	_traceX = traceStartX;
	_traceY = traceStartY;

	do
	{
		GetWall(obj);
		GetPlatform(obj);
	}
	until (traceStartX == _traceX && traceStartY == _traceY)
}

instance_deactivate_object(PlatformStruct);
instance_deactivate_object(WallStruct);