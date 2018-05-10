_previousLane = _lane;
_lane = _initialLane - round((_yRelease - y  + global.LaneWidth/2) / global.LaneWidth);

if (_previousLane != _lane)
{
	//Check collision using switch logic
	//Set depth depending on collision
	//If continuing past collision, change depth on collision
}

var vert = _travelSpeed * (_isUp ? -1 : 1) * global.delta;
	
_currentGroundY += vert;
y += vert;
	
depth = DepthModifier(_lane, "Projectile");
	
var len = 1;
var maxY = global.LaneYs[| _lane];
while(y + len < maxY)
{
	if (collision_line(x, y, x, y+len, asset_get_index("LaneObject" + string(_lane)), true, true))
		break;

	len++;
}

var lastCollisionY = _lastCollisionY;
_lastCollisionY = y + len;

_currentGroundY += _lastCollisionY - lastCollisionY;
_currentGroundY += (_previousLane - _lane) * global.LaneWidth;

if (abs(_yRelease-y) > _travelDistance)
	instance_destroy();