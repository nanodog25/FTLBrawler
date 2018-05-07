var colour = GetColour(_lane);
image_blend = make_color_rgb(color_get_red(colour), color_get_green(colour), color_get_blue(colour));
draw_self();