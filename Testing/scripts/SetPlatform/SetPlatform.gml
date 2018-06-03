///@arg obj

var startX = _traceX;
var obj = argument0;
var laneObjects = GetLaneObjects(obj._lane);
var overlaps;
var overlapIndex = 0;
var objectSide;
var dirValue;

if (collision_point(_traceX+1, _traceY-1, obj, true, false) != collision_point(_traceX+1, _traceY+1, obj, true, false))
{
	dirValue = 1;
	objectSide = collision_point(_traceX+1, _traceY+1, obj, true, false)
		? 1 : -1;
	
	do
	{
		overlaps[overlapIndex++] = collision_point(_traceX, _traceY-objectSide, laneObjects, true, false)
			? 1 : 0;
		
		_traceX++;
	}
	until (collision_point(_traceX, _traceY+objectSide, obj, true, false) == collision_point(_traceX, _traceY-objectSide, obj, true, false))
	_traceX--;
}
else
{
	dirValue = -1;
	objectSide = collision_point(_traceX+1, _traceY-1, obj, true, false)
		? 1 : -1;
	
	do
	{
		overlaps[overlapIndex++] = collision_point(_traceX, _traceY-objectSide, laneObjects, true, false)
			? 1 : 0;
		
		_traceX--;
	}
	until (collision_point(_traceX, _traceY+objectSide, obj, true, false) == collision_point(_traceX, _traceY-objectSide, obj, true, false))
	_traceX++;
}

var thisStart = -1;
for(var i=0; i<overlapIndex; i++)
{
	if (thisStart == -1 && overlaps[i] == 0)
	{
		thisStart = startX + dirValue*i;
	}
	if (thisStart != -1 && (overlaps[i] == 1 || (i == overlapIndex-1 && overlaps[i-1] == 0)))
	{
		var platform = instance_create_layer(0,0,"Perimeters", PlatformStruct);
		platform._y = _traceY;
		platform._xLeft = min(thisStart, startX + dirValue*i);
		platform._xRight = max(thisStart, startX + dirValue*i);
		platform._obj = obj.id;
		platform._lane = obj._lane;

		if (objectSide == 1)
			ds_list_add(global.LanePlatforms[| obj._lane], platform);
		else if (_traceY+1 < global.LaneYs[| obj._lane])
			ds_list_add(global.LaneCeilings[| obj._lane], platform);
			
		thisStart = -1;
	}
}