///@arg obj

var startX = _traceX;
var obj = argument0;

if (collision_point(_traceX+1, _traceY, obj, true, false))
{
	while (collision_point(_traceX, _traceY, obj, true, false))
	{
		_traceX++;
	}
	_traceX--;
}
else
{
	while (collision_point(_traceX, _traceY, obj, true, false))
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

if (collision_point(platform._xLeft+1, platform._y+1, obj, true, false))
	ds_list_add(global.LanePlatforms[| obj._lane], platform);