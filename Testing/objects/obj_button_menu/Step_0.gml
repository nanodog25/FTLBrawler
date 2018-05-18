room_persistent = false;

if (mouse_check_button_pressed(mb_left))
{
	if (point_in_rectangle(mouse_x - global.roomLeft, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom))
	{
		SaveRoom();
		room_goto(Menu);
	}
}
else if (keyboard_check_pressed(global.KeyItemMenu))
{
	global.isItemSelectionScreen = false;
	SaveRoom();
	room_goto(ItemSelect);
}
else if (keyboard_check_pressed(vk_escape))
{
	global.isItemSelectionScreen = true;
	SaveRoom();
	room_goto(ItemSelect);
}