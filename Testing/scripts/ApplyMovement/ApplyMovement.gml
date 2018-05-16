_sideCollision = false;
var col = noone;
if (_direction != 0)
	image_xscale = -_direction;

var switchOffset = _currentGroundY - _targetGroundY;
move_xLeft = bbox_left;
move_xRight = bbox_right;
move_yUp = bbox_top - switchOffset;
move_yDown = bbox_bottom - switchOffset;
move_obj = asset_get_index("LaneObject" + string(_lane));

if (_xSpeed != 0)
{
	col = _xSpeed > 0
		? IsPlatformCollision("right")
		: IsPlatformCollision("left");

	if (col == noone)
		x += _xSpeed * _speedMod * global.delta;
	else
	{
		
		x += GetExactHorizontalCollision();
		_xSpeed = 0;
		_sideCollision = true;
	}
}

var targetGroundYBefore = _targetGroundY;
var targetGroundYAfter = GetTargetGroundY();
_targetGroundY = targetGroundYAfter == 0 ? _targetGroundY : targetGroundYAfter;

if (targetGroundYBefore != _targetGroundY)
{
	_currentGroundY -= targetGroundYBefore - _targetGroundY;
}

var onFloor = !_isJumping && _currentGroundY == y;


_ySpeed = clamp(_ySpeed + _yAcc, -_jumpSpeed, _fallSpeed);

if (_ySpeed > 0 && !onFloor || _ySpeed < 0 && IsPlatformCollision("up") == noone)
{
	y += (_ySpeed + _ySwitch) * _speedMod * global.delta;
	
	if (!_isJumping && _ySwitch == 0 && y > _currentGroundY)
	{
		y = _currentGroundY;
		_isFalling = false;
		_ySpeed = 0;
		_yAcc = 0;
	}
}
else if (_ySpeed == 0 && _yAcc == 0 && !onFloor)
{
	if (_currentGroundY > y)
	{	
		_isFalling = _ySwitch == 0;
		y += (_ySpeed + _ySwitch) * _speedMod * global.delta;
	}
	else
	{
		y = _currentGroundY;
	}
}
else
{
	_ySpeed = 0;
	_yAcc = 0;
	_isJumping = false;
	_isFalling = !onFloor;
}

var laneDepth = _ySwitch < 0 ? _lane + 1 : _lane;
depth = DepthModifier(laneDepth, _objectType);