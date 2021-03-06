if (!_isSwitchingLane || _xSpeed == 0)
	MoveHorizontally(ai_isMovingLeft, ai_isMovingRight);

if (ai_retreat && _lane == global.playerLane)
	Retreat();
	
if (ai_fire && _canFire && !_isInvulnerable)
{
	Fire(_projectile, 50, -40);
}

_isAttacking = ai_fire;
	
if (!_isSwitchingLane && _canEverSwitchLane && _canSwitchLane && !_isFalling  && !IsItemActive(global.ItemLaneBarrier))
{
	SetSwitchLane(ai_moveUp, ai_moveDown);
}
	
if (!_isJumping && !_isFalling && _currentGroundY == y)
{	
	_canSwitchLane = true;
	if (ai_jump)
	{
		sprite_index = spr_jack_jump;
		image_index = 0;
		_isJumping = true;
		_jumpHeight = 0;
	}
}

if (_onPath && !_isSwitchingLane)
{
	if (_pathStruct._x >= x && _pathStruct._x < x + _xSpeed)
	{
		_xSpeed = 0;
		x = _pathStruct._x;
	}
	else if (_pathStruct._x <= x && _pathStruct._x > x + _xSpeed)
	{
		_xSpeed = 0;
		x = _pathStruct._x;
	}
}