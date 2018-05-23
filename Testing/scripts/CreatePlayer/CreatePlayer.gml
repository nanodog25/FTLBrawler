_healthBar = instance_create_depth(view_wview[0] - 32*6, 32, -10000, obj_HealthBar);
with (_healthBar)
{
	_maxHP = other._maxHP;
	_origin = other;
}

_isWormholeCooldown = false;