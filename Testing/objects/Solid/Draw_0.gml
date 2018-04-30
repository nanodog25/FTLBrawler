if (sprite_index >= 0)
{
	//DrawShadow();
	draw_set_alpha(1);

	shader_set(shader_outlineShader);
	shader_set_uniform_f(pixH, texH*2);
	shader_set_uniform_f(pixW, texW*2);

	var colour = GetColour(_lane);
	shader_set_uniform_f(outlineColour, color_get_red(colour), color_get_green(colour), color_get_blue(colour), 1);

	draw_self();
	shader_reset();
}