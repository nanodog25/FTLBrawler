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
		SetWall(obj);
		SetPlatform(obj);
	}
	until (traceStartX == _traceX && traceStartY == _traceY)
}

for(var i=0; i<5;i++)
{
	var width;
	for (var a=0; a<view_wview[0]; a++)
	{
		width[a] = 1;
	}

	for (var j=0; j<ds_list_size(global.LanePlatforms[| i]); j++)
	{
		with(ds_list_find_value(global.LanePlatforms[| i], j))
		{
			for(var k = _xLeft; k <= _xRight; k++)
			{
				width[k] = 0;
			}
		}
	}
	
	var left = -1;
	for (var a=0; a<view_wview[0]; a++)
	{
		if (left == -1 && width[a] == 1)
			left = a;
		
		if (left != -1 && width[a] == 0)
		{
			var platform = instance_create_layer(0,0,"Perimeters", PlatformStruct);
			platform._height = 0;
			platform._xLeft = left;
			platform._xRight = width[a]-1;
			platform._obj = obj_floor;
			left = -1;
		}
	}
}

instance_deactivate_object(PlatformStruct);
instance_deactivate_object(WallStruct);