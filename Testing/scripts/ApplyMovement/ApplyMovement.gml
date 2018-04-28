_sideCollision = false;
var col = noone;

if (_xSpeed != 0)
{
	col = _xSpeed > 0
		? IsPlatformCollision("right")
		: IsPlatformCollision("left");

	if (col == noone)
		x += _xSpeed;
	else
	{
		_xSpeed = 0;
		_sideCollision = true;
	}
	
	if (col != noone && !_isJumping && !_isHit && _xSpeed != 0 && object_index != asset_get_index("Player"))
	{
		SetJumping();
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