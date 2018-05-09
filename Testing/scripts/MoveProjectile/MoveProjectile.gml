if (_isVertical)
{
	_lane = _yRelease == y
		? _initialLane
		: _initialLane - round((_yRelease - y  + global.LaneWidth/2) / global.LaneWidth);
	
	var vert = _travelSpeed * (_isUp ? -1 : 1) * global.delta;
	
	_currentGroundY += vert;
	y += vert;
	
	//if (_isLob && _height < )
	//	y -= _travelSpeed;
	
	depth = DepthModifier(_lane + (_isUp ? 1 : -1), "Projectile");
	
	if (abs(_yRelease-y) > _travelDistance)
		instance_destroy();
}
else
{
	x += _direction*_travelSpeed * global.delta;
	if (abs(_xRelease-x) > _travelDistance)
		instance_destroy();
}

var len = 1;
var maxY = global.LaneYs[| _lane];
while(y + len < maxY)
{
	if (collision_line(x, y, x, y+len, asset_get_index("LaneObject" + string(_lane)), true, true))
		break;

	len++;
}

if (_lastCollisionY != 0)
{
	var lastCollisionY = _lastCollisionY;
	_lastCollisionY = y + len;

	_currentGroundY += _lastCollisionY - lastCollisionY;
}
else
	_lastCollisionY = y + len;