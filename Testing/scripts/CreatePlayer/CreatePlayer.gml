/// @arg speedMod
/// @arg switchMod
_speedMod = argument0;
_switchSpeedMod = argument1;

_speed = _speed*_speedMod;
_switchSpeed = _switchSpeed * _switchSpeedMod;

_healthBar = instance_create_depth(view_wview[0] - 32*6, 32, -10000, obj_HealthBar);
with (_healthBar)
{
	_maxHP = other._maxHP;
	_origin = other;
}

