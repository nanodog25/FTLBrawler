if (_xSpeed != 0
	&&	(_xSpeed > 0 && IsPlatformCollision("right") == noone || _xSpeed < 0 && IsPlatformCollision("left") == noone))
{
	x += _xSpeed;
}

else if (!_isJumping && _xSpeed != 0 && object_index != asset_get_index("Player"))
{
	SetJumping();
}
else
{
	_xSpeed = 0;
}

var targetGroundYBefore = _targetGroundY;
var targetGroundYAfter = GetTargetGroundY();
_targetGroundY = targetGroundYAfter == 0 ? _targetGroundY : targetGroundYAfter;

if (targetGroundYBefore != _targetGroundY)
{
	_currentGroundY -= targetGroundYBefore - _targetGroundY;
}

var onFloor = !_isJumping && _currentGroundY == y;

if (_ySpeed > 0 && !onFloor || _ySpeed < 0 && IsPlatformCollision("up") == noone)
{
	y += _ySpeed;
	
	if (!_isJumping && y > _currentGroundY)
	{
		y = _currentGroundY;
		_isFalling = false;
		_ySpeed = 0;
	}
}
else if (_ySpeed == 0 && !onFloor)
{
	if (_currentGroundY > y)
	{
		_ySpeed += _fallSpeed;
		_isFalling = true;
		y += _ySpeed;
	}
	else
	{
		y = _currentGroundY;
	}
}
else
{
	_ySpeed = 0;
	_isFalling = false;
	_isJumping = false;
}
depth = DepthModifier(_lane, _objectType);