/// @description onHit
if (_isBlocking)
{
	_knockBack = other._knockBack;
	_hasBlocked = true;
	_hitDirection = other._direction;
	alarm_set(3, InSeconds(.3)/ _speedMod);

}
else if (!_isInvulnerable && !_isLaunched)
{
	if (other._isLauncher)
	{
		_isLaunched = true;
		_isJumping = false;
		_isFalling = false;
		_launchState = "airborne";
	}
	else
	{
		alarm_set(1, InSeconds(.3)/_speedMod);
	}
	_isHit = true;
	_isInvulnerable = true;
	_hitDirection = other._direction;
	_currentHP -= other._damage;
	_knockBack = other._knockBack;
}