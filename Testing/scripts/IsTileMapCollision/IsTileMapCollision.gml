/// @arg direction

var dir = argument0;

var xLeft = x - abs(sprite_xoffset);
var xRight = x + abs(sprite_width) - abs(sprite_xoffset);
var yUp = y - sprite_yoffset;
var yDown = y + sprite_height - sprite_yoffset;

switch(dir)
{
	case "up":
		return tilemap_get_at_pixel("Lane" + string(_lane), xLeft, yUp)
			|| tilemap_get_at_pixel("Lane" + string(_lane), xRight, yUp);
	case "down":
		return tilemap_get_at_pixel("Lane" + string(_lane), xLeft, yDown)
			|| tilemap_get_at_pixel("Lane" + string(_lane), xRight, yDown);
	case "left":
		return tilemap_get_at_pixel("Lane" + string(_lane), xLeft - 1, yUp)
			|| tilemap_get_at_pixel("Lane" + string(_lane), xLeft - 1, yDown - 10);
	case "right":
		return tilemap_get_at_pixel("Lane" + string(_lane), xRight + 1, yUp)
			|| tilemap_get_at_pixel("Lane" + string(_lane), xRight + 1, yDown - 10);
}