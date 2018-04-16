_ySpeed = 0;

if (_isHit)
{

}
else
{
	var fire = true;
	if (fire && _canFire)
	{
		Fire(obj_Bullet, 30, -40);
	}

	_isAttacking = fire;
	
	if (!_isSwitchingLane && _canEverSwitchLane && _canSwitchLane && !_isFalling)
	{

	}
	
	if (!_isJumping && !_isFalling)
	{	

	}
}

if (_isJumping)
{	
	_isFalling = false;
	Jump();
}
if (_isFalling)
{
	Fall();
}
	
if (_isSwitchingLane)
{
	SwitchLane();
}
else
{

}

ApplyMovement();

if (!_isHit && !_isJumping && !_isFalling)
{
	if (_xSpeed == 0)
		sprite_index = _isAttacking ? spr_jack_shoot : spr_jack_stand;
	else
		sprite_index = _isAttacking ? spr_jack_runshoot : spr_jack_run;
}