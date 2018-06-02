///@arg obj

var startX = _traceX;
var obj = argument0;

if (collision_point(_traceX+1, _traceY-1, obj, true, false) != collision_point(_traceX+1, _traceY+1, obj, true, false))
{
	_traceX++;
	while (collision_point(_traceX, _traceY-1, obj, true, false) != collision_point(_traceX, _traceY+1, obj, true, false))
	{
		_traceX++;
	}
	_traceX--;
}
else
{
	_traceX--;
	while (collision_point(_traceX, _traceY-1, obj, true, false) != collision_point(_traceX, _traceY+1, obj, true, false))
	{
		_traceX--;
	}
	_traceX++;
}

var platform = instance_create_layer(0,0,"Perimeters", PlatformStruct);
platform._y = _traceY;
platform._xLeft = min(startX, _traceX);
platform._xRight = max(startX, _traceX);
platform._obj = obj.id;
platform._lane = obj._lane;

if (collision_point(platform._xLeft+1, _traceY+1, obj, true, false))
	ds_list_add(global.LanePlatforms[| obj._lane], platform);
else if (_traceY+1 < global.LaneYs[| obj._lane] && !collision_point(platform._xLeft+1, _traceY+1, asset_get_index("LaneObject" + string(obj._lane)), true, false))
	ds_list_add(global.LaneCeilings[| obj._lane], platform);
