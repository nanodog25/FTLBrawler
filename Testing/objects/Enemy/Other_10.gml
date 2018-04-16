/// @description onHit
if (!_isInvulnerable )
{
	_isHit = true;
	_isInvulnerable = true;
	_hitDirection = other._direction;
	alarm_set(1, 20);
}