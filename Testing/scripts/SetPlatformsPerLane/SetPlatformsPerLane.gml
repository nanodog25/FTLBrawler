ds_list_clear(global.LanePlatforms);
ds_list_clear(global.LaneCeilings);
ds_list_clear(global.LaneWallsRight);
ds_list_clear(global.LaneWallsLeft);

instance_destroy(PlatformStruct);
instance_destroy(WallStruct);

for(var i=0; i<5;i++)
{
	ds_list_add(global.LanePlatforms, ds_list_create());
	ds_list_add(global.LaneCeilings, ds_list_create());
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
	for (var a=global.roomLeft; a<=global.roomRight; a++)
	{
		width[a] = 1;
	}

	var floors = GetFloorsInLane(i);
	
	for (var j=0; j<ds_list_size(floors); j++)
	{
		var platform = floors[| j];
		if (platform._obj.y == global.LaneYs[| i])
		{
			for(var k = platform._xLeft; k <= platform._xRight; k++)
			{
				width[k] = 0;
			}
		}
	}
	
	var left = -1;
	for (var a=global.roomLeft; a<=global.roomRight; a++)
	{
		if (left == -1 && width[a] == 1)
			left = a;
		
		if (left != -1 && (width[a] == 0 || a == global.roomRight))
		{
			var platform = instance_create_layer(0,0,"Perimeters", PlatformStruct);
			platform._y = global.LaneYs[| i];
			platform._xLeft = left;
			platform._xRight = a-1;
			platform._obj = obj_floor;
			platform._lane = i;
			ds_list_add(global.LanePlatforms[| platform._lane], platform);
			left = -1;
		}
	}
}

instance_deactivate_object(PlatformStruct);
instance_deactivate_object(WallStruct);