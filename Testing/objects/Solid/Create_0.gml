_isDestructible = true;
_isHit = false;

if (sprite_index >= 0)
{
	pixH = shader_get_uniform(shader_outlineShader, "pixelHeight");
	pixW = shader_get_uniform(shader_outlineShader, "pixelWidth");
	outlineColour = shader_get_uniform(shader_outlineShader, "in_Colour");
	alph = shader_get_uniform(shader_outlineShader, "alph");
	texH = texture_get_texel_height(sprite_get_texture(sprite_index, 0));
	texW = texture_get_texel_width(sprite_get_texture(sprite_index, 0));
}