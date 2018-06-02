if (debug_mode)
	global.delta = 1;
else
	global.delta = delta_time * game_get_speed(gamespeed_fps) / 1000000;


if (!_loadedObjects && _shouldLoadObjects)
{
	SetObjectsInView();
	SetPlatformsPerLane();
	_loadedObjects = true;
}