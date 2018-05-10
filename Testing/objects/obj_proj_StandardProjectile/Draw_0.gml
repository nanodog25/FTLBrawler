var colour = GetColour(_lane);
//image_blend = make_color_rgb(color_get_red(colour), color_get_green(colour), color_get_blue(colour));
//draw_self();

var spr = _isVertical ? spr_proj_vertical : spr_proj_horizontal;

var xS = _direction ? 1 : -1;
var yS = _isVertical && !_isUp ? -1 : 1;

draw_sprite_ext(spr, 0, x, y, xS, yS, 0, colour, .6);
if (_lane >= 0 && _lane <= 4)
	draw_sprite_ext(spr, 0, x, _currentGroundY, xS, yS, 0, colour, .3);

if (_reachesGround)
	draw_line(x, y, x, _currentGroundY);