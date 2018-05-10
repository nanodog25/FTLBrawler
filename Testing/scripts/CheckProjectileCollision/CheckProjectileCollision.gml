if (collision_line(_xBefore, _yBefore, x, y, Solid, true, true) != noone)
{
	var len = 1;
	var maxLength = max(abs(x - _xBefore), abs(y - _yBefore));
	var xMove = x != _xBefore;
	var yMove = y != _yBefore;

	//Begin raycast loop
	while(len < maxLength)
	{
		if (collision_line(_xBefore, _yBefore, _xBefore + len * _direction * xMove, _yBefore + len * _direction * yMove, Solid, true, true) == noone)
			len++;
		else
			break;
	}
	
	_colX =  _xBefore + len * _direction * xMove;
	_colY =  _yBefore + len * _direction * yMove;
	
	ProjectileCollision();
}