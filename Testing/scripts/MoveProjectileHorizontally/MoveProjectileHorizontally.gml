x += _direction*_travelSpeed * global.delta;
	
var len = 1;
var maxY = global.LaneYs[| _lane];
while(y + len < maxY)
{
	if (collision_line(x, y, x, y+len, asset_get_index("LaneObject" + string(_lane)), true, true))
		break;

	len++;
}

_currentGroundY = y + len;
	
if (abs(_xRelease-x) > _travelDistance)
	instance_destroy();