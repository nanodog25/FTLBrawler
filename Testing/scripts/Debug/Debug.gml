if (keyboard_check_pressed(global.KeyGrid))
{
	_displayGrid = !_displayGrid;
}

if (keyboard_check_pressed(global.KeyMinus) && room_exists(room_previous(room)) && room_previous(room) != Menu)
{
	global.isFightInitiated = false;
	ds_list_clear(global.ItemsUsed);
	ds_list_clear(global.ItemsActive);
	room_goto_previous();
}

if (keyboard_check_pressed(global.KeyPlus) && room_exists(room_next(room)) && room_next(room) != Menu)
{
	global.isFightInitiated = false;
	ds_list_clear(global.ItemsUsed);
	ds_list_clear(global.ItemsActive);
	room_goto_next();
}
