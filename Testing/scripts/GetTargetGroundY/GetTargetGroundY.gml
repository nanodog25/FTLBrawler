if (IsPlatformCollision("down") != noone)
{
	var len = move_yDown - 10;
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