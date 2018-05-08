if (IsPlatformCollision("down") != noone)
{
	var len = _ySwitch == 0 ? move_yDown - 10 : move_yDown + 1;
	var maxY = global.LaneYs[| _lane];

	//Begin raycast loop
	while(len < maxY)
	{
		if (collision_line(move_xLeft, len, move_xRight, len, move_obj, true, true))
			return len;

	    len++;
	}
}
return global.LaneYs[| _lane];