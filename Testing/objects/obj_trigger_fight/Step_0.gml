if (!global.isFightInitiated)
{
	if (global.playerX + 100 > x)
	{
		global.isFightInitiated = true;
		camera_set_view_pos(view_camera[0], x - 64, 0);
		camera_set_view_target(view_camera[0], noone);
		_camX = camera_get_view_x(view_camera[0]);
		_camY = camera_get_view_y(view_camera[0]);
	}
}
else
{
	if (!collision_rectangle(_camX, _camY, _camX + view_wview[0], _camY + view_hview[0], Enemy, false, false))
	{
		global.isFightInitiated = false;
		camera_set_view_target(view_camera[0], Player);
		instance_destroy();
	}
}