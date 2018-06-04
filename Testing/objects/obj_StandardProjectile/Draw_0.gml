var colour = GetColour(_lane);
image_blend = colour;
draw_self();

var spr = _isVertical ? spr_proj_vertical : spr_proj_horizontal;

if (_isVertical)
{
	var yS = !_isUp ? -1 : 1;

	draw_sprite_part_ext(spr, 0, 0, 0, sprite_get_width(spr), sprite_get_height(spr) - abs(_yRelease - y), x - sprite_get_xoffset(spr), y - sprite_get_yoffset(spr), 1, yS, colour, .6);
	draw_sprite_part_ext(spr, 0, 0, 0, sprite_get_width(spr), sprite_get_height(spr) - abs(_yRelease - y), x - sprite_get_xoffset(spr), _currentGroundY - sprite_get_yoffset(spr), 1, yS, colour, .6);
}
else
{
	var xS = _direction ? 1 : -1;
	draw_sprite_ext(spr, 0, x, y, xS, 1, 0, colour, .6);
	draw_sprite_ext(spr, 0, x, _currentGroundY, xS, 1, 0, colour, .3);
}
if (_reachesGround)
	draw_line(x, y, x, _currentGroundY);