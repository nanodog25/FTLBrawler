if (!global.isFightInitiated)
{
	if (global.playerX - 100 > x)
	{
		global.isFightInitiated = true;
		camera_set_view_pos(view_camera[0], x, 0);
		camera_set_view_target(view_camera[0], noone);
		_camY = camera_get_view_y(view_camera[0]);
		GetObjectsInView();
	}
}
else
{
	if (!collision_rectangle(global.roomLeft, _camY, global.roomRight, _camY + view_hview[0], Enemy, true, false))
	{
		global.isFightInitiated = false;
		camera_set_view_target(view_camera[0], Player);
		instance_destroy();
	}
}