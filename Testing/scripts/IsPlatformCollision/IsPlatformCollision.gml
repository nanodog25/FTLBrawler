/// @arg direction

var dir = argument0;

var jumpOffset = _jumpHeight;
var switchOffset = _currentGroundY - _targetGroundY;

var xLeft = x - abs(sprite_xoffset);
var xRight = x + abs(sprite_width) - abs(sprite_xoffset);
var yUp = y - sprite_yoffset - jumpOffset - switchOffset;
var yDown = y + sprite_height - sprite_yoffset - jumpOffset - switchOffset;

var obj = asset_get_index("LaneObject" + string(_lane));
var buffer = _collisionBuffer - abs(_xSpeed);

switch(dir)
{
	case "up":
		return collision_line(xLeft + buffer, yUp, xRight - buffer, yUp, obj, true, true);
	case "down":
			return collision_rectangle(xLeft + buffer, yUp, xRight - buffer, global.LaneYs[| _lane], obj, true, true);
	case "left":
			return xLeft < 0
				? obj_leftBorder
				: collision_line(xLeft, yUp + buffer, xLeft, yDown - buffer, obj, true, true);
	case "right":
		return xRight > room_width
			? obj_rightBorder
			: collision_line(xRight, yUp + buffer, xRight, yDown - buffer, obj, true, true);
}