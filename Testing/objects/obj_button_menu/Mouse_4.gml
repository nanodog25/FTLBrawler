global.roomSurface = -1;

if !surface_exists(global.roomSurface)
{
	global.roomSurface = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
}
global.roomToMenu = room;
room_persistent = true;
room_goto(Menu);