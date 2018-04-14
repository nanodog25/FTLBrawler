/// @arg direction

var dir = argument0;

var xLeft = x - abs(sprite_xoffset);
var xRight = x + abs(sprite_width) - abs(sprite_xoffset);
var yUp = y - sprite_yoffset;
var yDown = y + sprite_height - sprite_yoffset;

var obj = asset_get_index("LaneObject" + string(_lane));

switch(dir)
{
	case "up":
		return collision_line(xLeft, yUp, xRight, yUp, obj, false, true);
	case "down":
			return collision_line(xLeft, yDown, xRight, yDown, obj, false, true);
	case "left":
			return collision_line(xLeft, yUp, xLeft, yDown - 10, obj, false, true);
	case "right":
		return collision_line(xRight, yUp, xRight, yDown - 10, obj, false, true);
}