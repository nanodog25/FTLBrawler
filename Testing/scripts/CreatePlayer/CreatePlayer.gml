/// @arg speedMod
/// @arg switchMod
_speedMod = argument0;
_switchSpeedMod = argument1;

_speed = _speed*_speedMod;
_switchSpeed = _switchSpeed * _switchSpeedMod;

global.currentHP = _maxHP;
_healthBar = instance_create_layer(0, 800, "GUI_obj", obj_HealthBar);
with (_healthBar)
{
	_maxHP = other._maxHP;
}