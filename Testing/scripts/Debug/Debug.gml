if (keyboard_check_pressed(ord(global.KeyGrid)))
{
	layer_set_visible("lay_grid", !layer_get_visible("lay_grid"));
}