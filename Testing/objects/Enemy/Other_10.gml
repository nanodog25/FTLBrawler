/// @description onHit
if (!_isInvulnerable )
{
	_isHit = true;
	_isInvulnerable = true;
	_hitDirection = other._direction;
	_knockBack = other._knockBack;
	_currentHP -= other._damage;
	alarm_set(1, 20);
}