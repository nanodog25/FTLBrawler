if (_isVertical)
{
	if (abs(_yRelease - y) < _travelDistance)
	{
		y += _travelSpeed * (_isUp ? -1 : 1) * global.delta;
	}
}
else
{
	if (abs(_xRelease - x) < _travelDistance/2)
	{
		x += _travelSpeed * _direction * global.delta;
		y -= _travelSpeed;
	}
	else
	{
		if (_laneCrossing)
		{
			_colX = x;
			_colY = y;
			_laneCrossing = false;
			LaneSplash();
		}
	
		x += _travelSpeed * _direction * global.delta;
		y += _travelSpeed * global.delta;
	}
}