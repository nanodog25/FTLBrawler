if (_isVertical)
{
	_lane = _yRelease == y
		? _initialLane
		: _initialLane - round((_yRelease - y  + global.LaneWidth/2) / global.LaneWidth);
		
	y += _travelSpeed * (_isUp ? -1 : 1) * global.delta;
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
_currentGroundY = y + len;
