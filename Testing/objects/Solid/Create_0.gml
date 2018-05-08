_isDestructible = false;
_isHit = false;
_lane = 0;

if (sprite_index >= 0)
{
	pixH = shader_get_uniform(shader_outlineShader, "pixelHeight");
	pixW = shader_get_uniform(shader_outlineShader, "pixelWidth");
	outlineColour = shader_get_uniform(shader_outlineShader, "in_Colour");
	texH = texture_get_texel_height(sprite_get_texture(sprite_index, 0));
	texW = texture_get_texel_width(sprite_get_texture(sprite_index, 0));
}