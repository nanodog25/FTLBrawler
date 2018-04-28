/// @arg speedMod
/// @arg switchMod
_speedMod = argument0;
_switchSpeedMod = argument1;

_speed = _speed*_speedMod;
_switchSpeed = _switchSpeed * _switchSpeedMod;

_healthBar = instance_create_layer(0, 800, "GUI_obj", obj_HealthBar);
with (_healthBar)
{
	_maxHP = other._maxHP;
	_origin = other;
}

global.playerSpeed = _speed;
global.playerSwitchSpeed = _switchSpeed;
global.playerMaxJumpHeight = _maxJumpHeight;
global.playerJumpSpeed = _jumpSpeed;
global.playerFallSpeed = _fallSpeed;