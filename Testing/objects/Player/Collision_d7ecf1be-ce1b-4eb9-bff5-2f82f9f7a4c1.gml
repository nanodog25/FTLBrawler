if (!_isInvulnerable && other._released && other._origin.object_index != asset_get_index("Player") && other._lane == _lane)
{
	_isHit = true;
	_isInvulnerable = true;
	_hitDirection = other._direction;
	alarm_set(1, 20);
}