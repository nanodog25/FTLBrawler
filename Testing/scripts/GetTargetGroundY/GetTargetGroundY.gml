if (IsPlatformCollision("down") != noone)
{
	var switchOffset = _currentGroundY - _targetGroundY;

	var xLeft = x - abs(sprite_xoffset);
	var xRight = x + abs(sprite_width) - abs(sprite_xoffset);
	var yUp = y - sprite_yoffset - switchOffset;
	var yDown = y + sprite_height - sprite_yoffset - jumpOffset - switchOffset;

	var obj = asset_get_index("LaneObject" + string(_lane));

	var len = yUp + _collisionBuffer;
	var maxY = global.LaneYs[| _lane];

	//Begin raycast loop
	while(len < maxY)
	{
		if (collision_line(xLeft + _collisionBuffer, len, xRight - _collisionBuffer, len, obj, true, true))
			return len;

	    len++;
	}

	return false;
}
return global.LaneYs[| _lane];