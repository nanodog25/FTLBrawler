///@arg obj

var startY = _traceY;
var obj = argument0;
var laneObjects = GetLaneObjects(obj._lane);
var overlaps;
var overlapIndex = 0;
var objectSide;
var dirValue;
var maxBase = global.LaneYs[| obj._lane];

if (collision_point(_traceX-1, _traceY+1, obj, true, false) != collision_point(_traceX+1, _traceY+1, obj, true, false))
{
	dirValue = 1;
	objectSide = collision_point(_traceX+1, _traceY+1, obj, true, false)
		? 1 : -1;
	do
	{
		overlaps[overlapIndex++] = collision_point(_traceX-objectSide, _traceY, laneObjects, true, false)
			? 1 : 0;
		
		_traceY++;
	}
	until (collision_point(_traceX+objectSide, _traceY, obj, true, false) == collision_point(_traceX-objectSide, _traceY, obj, true, false))
	_traceY--;
}
else
{
	dirValue = -1;
	objectSide = collision_point(_traceX+1, _traceY-1, obj, true, false)
		? 1 : -1;
	do
	{
		overlaps[overlapIndex++] = collision_point(_traceX-objectSide, _traceY, laneObjects, true, false)
			? 1 : 0;
		
		_traceY--;
	}
	until (collision_point(_traceX+objectSide, _traceY, obj, true, false) == collision_point(_traceX-objectSide, _traceY, obj, true, false))
	_traceY++;
}

var thisStart = -1;
for(var i=0; i<overlapIndex; i++)
{
	if (thisStart == -1 && overlaps[i] == 0)
	{
		thisStart = startY + dirValue*i;
	}
	if (thisStart != -1 && (overlaps[i] == 1 || (i == overlapIndex-1 && overlaps[i-1] == 0)))
	{
		var wall = instance_create_layer(0,0,"Perimeters", WallStruct);
		wall._x = _traceX;
		wall._yBase = max(thisStart, startY + dirValue*i);
		wall._yTop = min(thisStart, startY + dirValue*i);
		wall._obj = obj.id;
		wall._lane = obj._lane;
		
		if (wall._yBase > maxBase)
			wall._yBase = maxBase;
		
		if (objectSide == 1)
			ds_list_add(global.LaneWallsLeft[| obj._lane], wall);
		else
			ds_list_add(global.LaneWallsRight[| obj._lane], wall);
			
		thisStart = -1;
	}
}