///@arg obj

var startY = _traceY;
var obj = argument0;

if (collision_point(_traceX, _traceY+1, obj, true, false))
{
	while (collision_point(_traceX, _traceY, obj, true, false))
	{
		_traceY++;
	}
	_traceY--;
}
else
{
	while (collision_point(_traceX, _traceY, obj, true, false))
	{
		_traceY--;
	}
	_traceY++;
}

var wall = instance_create_layer(0,0,"Perimeters", WallStruct);
wall._x = _traceX;
wall._heightBase = GetRelativeHeight(max(startY, _traceY), obj._lane);
wall._heightTop = GetRelativeHeight(min(startY, _traceY), obj._lane);
wall._obj = obj.id;
wall._lane = obj._lane;

if (collision_point(_traceX+1, _traceY-1, obj, true, false))
	ds_list_add(global.LaneWallsLeft[| obj._lane], wall);
else
	ds_list_add(global.LaneWallsRight[| obj._lane], wall);