/// @arg direction

var dir = argument0;

switch(dir)
{
	case "up":
		return collision_line(move_xLeft + global.collisionBuffer, move_yUp, move_xRight - global.collisionBuffer, move_yUp, move_obj, true, true);
	case "down":
		return collision_rectangle(move_xLeft, move_yDown - 10, move_xRight, global.LaneYs[| _lane], move_obj, true, true);
	case "left":
		return move_xLeft + _xSpeed < 0
			? obj_leftBorder
			: collision_rectangle(move_xLeft, move_yUp + global.collisionBuffer, move_xLeft + _xSpeed, move_yDown - global.collisionBuffer, move_obj, true, true);
	case "right":
		return move_xRight + _xSpeed > room_width
			? obj_rightBorder
			: collision_rectangle(move_xRight, move_yUp + global.collisionBuffer, move_xRight + _xSpeed, move_yDown - global.collisionBuffer, move_obj, true, true);
}