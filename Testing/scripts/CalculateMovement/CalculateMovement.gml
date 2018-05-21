MoveHorizontally(ai_isMovingLeft, ai_isMovingRight);
if (ai_retreat)
	Retreat();
	
if (ai_fire && _canFire)
{
	Fire(_projectile, 50, -40);
}

_isAttacking = ai_fire;
	
if (!_isSwitchingLane && _canEverSwitchLane && _canSwitchLane && !_isFalling)
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