var projectile = noone;

if (ai_canDodge)
{
	with(obj_proj_StandardProjectile)
	{
		if (_lane == other._lane)
		{
			if (!_isVertical && abs(x-other.x) < _travelSpeed * 3
			&& (x < other.x && _direction == 1
				|| x > other.x && _direction == -1))
			{
				projectile = self;
				break;
			}
		}
	}
	if (projectile != noone)
	{
		ai_canDodge = false;
		alarm_set(3, InSeconds(1));
		if (ai_agility > random(10))
			projectile = noone;
	}
}

return projectile;