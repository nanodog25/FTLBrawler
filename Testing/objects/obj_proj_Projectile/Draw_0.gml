var colour = GetColour(_lane);
image_blend = make_color_rgb(color_get_red(colour), color_get_green(colour), color_get_blue(colour));
draw_self();

draw_set_alpha(.6);
draw_set_color(GetColour(_lane));
draw_ellipse(bbox_left,_currentGroundY-8,bbox_right,_currentGroundY+8,false);

if (_reachesGround)
	draw_line(x, y, x, _currentGroundY);