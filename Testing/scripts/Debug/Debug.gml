if (keyboard_check_pressed(global.KeyGrid))
{
	layer_set_visible("Debug_Grid", !layer_get_visible("Debug_Grid"));
}