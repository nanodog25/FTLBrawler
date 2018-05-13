var rad = lerp(midX, radius, lrp);
lrp -= 0.5;
if (lrp < 0)
	instance_destroy();

draw_set_alpha(1);

shader_set(shader_dissipate);
shader_set_uniform_f(shader_params_radius, rad);
shader_set_uniform_f(shader_params_bandWidth, band);
shader_set_uniform_f(shader_params2, midX);
shader_set_uniform_f(shader_params3, midY);

var colour = GetColour(_lane);
shader_set_uniform_f(outlineColour, color_get_red(colour), color_get_green(colour), color_get_blue(colour), 1);

draw_self();
shader_reset();