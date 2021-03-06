var len = 1;
var maxY = global.LaneYs[| _lane];
while(y + len < maxY)
{
	if (collision_line(x, y, x, y+len, asset_get_index("LaneObject" + string(_lane)), true, true))
		break;

	len++;
}

_currentGroundY = y + len;


x += _direction*_travelSpeed * _speedMod * global.delta;

if (_isLob)
{
	y -= (_travelSpeed - _yAcc) * _speedMod * global.delta;
	if (_yRelease - y > 100)
		_yAcc += 3;
	
	if (y >= _currentGroundY)
	{
		_colX = x;
		_colY = y;
		ProjectileCollision();
		_destroySelf = true;
	}
}


var top = y - sprite_get_yoffset(spr_proj_horizontal);
var bottom = y + sprite_get_height(spr_proj_horizontal) - sprite_get_yoffset(spr_proj_horizontal);
var xx = x - 50 * _direction;

effect_create_below(ef_spark, xx, bottom, 0.01, GetColour(_lane));
effect_create_below(ef_spark, xx, top, 0.01, GetColour(_lane));

if (!_isLob && abs(_xRelease-x) > _travelDistance)
	_destroySelf = true;