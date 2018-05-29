if (IsPlatformCollision("down") != noone)
{
	var len = move_yDown - 10;
	var maxY = global.LaneYs[| _lane] + _currentGroundY - _targetGroundY;
	
	var wedgedLeft = collision_line(move_xLeft, move_yDown - 11, move_xLeft+1, move_yDown - 11, move_obj, true, true);
	var wedgedRight = collision_line(move_xRight-1, move_yDown - 11, move_xRight, move_yDown - 11, move_obj, true, true);

	var left;
	var right;
	
	if (wedgedLeft)
	{
		left = move_xLeft;
		right = move_xLeft+1;
	}
	else if (wedgedRight)
	{
		left = move_xRight-1;
		right = move_xRight;
	}
	else
	{
		left = move_xLeft;
		right = move_xRight;
	}
	
	//Begin raycast loop
	while(len < maxY)
	{
		if (collision_line(left, len, right, len, move_obj, true, true))
			return len;

	    len++;
	}
}
return global.LaneYs[| _lane];