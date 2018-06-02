if (!global.isFightInitiated)
{
	if (global.playerX - 100 > x)
	{
		StartFight();
		camera_set_view_pos(view_camera[0], x, 0);
		camera_set_view_target(view_camera[0], noone);
		_camY = camera_get_view_y(view_camera[0]);
	}
}
else
{
	if (!_loadedObjects)
	{
		SetObjectsInView();
		SetPlatformsPerLane();
		_loadedObjects = true;
	}
	
	if (!collision_rectangle(global.roomLeft, _camY, global.roomRight, _camY + view_hview[0], Enemy, true, false))
	{
		EndFight();
		camera_set_view_target(view_camera[0], Player);
		instance_destroy();
	}
}