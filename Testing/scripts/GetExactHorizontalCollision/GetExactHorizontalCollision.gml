var len;
var maxX;
var increment;

if (_xSpeed > 0)
{
	len = move_xRight;
	maxX = _xSpeed;
	increment = 1;
	
	while(increment < maxX)
	{
		if (collision_line(len + increment, move_yUp + global.collisionBuffer, len + increment, move_yDown - global.collisionBuffer, move_obj, true, true))
			return increment - 1;

		increment++;
	}
}
else
{
	len = move_xLeft;
	maxX = _xSpeed;
	increment = -1;
	
	while(increment > maxX)
	{
		if (collision_line(len + increment, move_yUp + global.collisionBuffer, len + increment, move_yDown - global.collisionBuffer, move_obj, true, true))
			return increment + 1;

		increment--;
	}
}