room_persistent = false;

if (mouse_check_button_pressed(mb_left))
{
	if (point_in_rectangle(mouse_x - global.roomLeft, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom))
	{
		global.roomSurface = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
		global.roomToMenu = room;
		room_persistent = true;
		room_goto(Menu);
	}
}