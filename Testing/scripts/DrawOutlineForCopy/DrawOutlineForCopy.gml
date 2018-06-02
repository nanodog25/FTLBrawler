if (sprite_index >= 0 && _lane == global.playerLane)
{
	var newalph = 1;

	shader_set(shader_outlineShader);
	shader_set_uniform_f(pixH, texH*2);
	shader_set_uniform_f(pixW, texW*2);
	shader_set_uniform_f(alph, newalph);

	var colour = GetColour(_lane);
	shader_set_uniform_f(outlineColour, color_get_red(colour), color_get_green(colour), color_get_blue(colour), 1);

	draw_sprite_part_ext(sprite_index, 0, copy_left, copy_top, sprite_width, sprite_height, copy_x, copy_y, image_xscale, image_yscale, c_white, 1);
	shader_reset();
}