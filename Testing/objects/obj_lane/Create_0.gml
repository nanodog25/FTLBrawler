shader_params_radius = shader_get_uniform(shader_dissipate, "radius");
shader_params_bandWidth = shader_get_uniform(shader_dissipate, "bandWidth");
shader_params2 = shader_get_uniform(shader_dissipate, "xCenter");
shader_params3 = shader_get_uniform(shader_dissipate, "yCenter");
outlineColour = shader_get_uniform(shader_dissipate, "in_Colour");
_lane = 1;

var uv = sprite_get_uvs(sprite_index, 0);
radius = (uv[2] - uv[0])/2;
band = radius;
midX = uv[0] + radius;
midY = uv[1] + radius;

lrp = 10;