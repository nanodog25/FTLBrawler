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

global.laneCrossing = false;
global.isVertical = false;
global.isIgnoringCover = false;
global.isPiercing = false;
global.isDestructible = false;
global.isLauncher = false;
global.damage = 20;
global.rateOfFire = 20;
global.buildUpDuration = 0;
global.travelSpeed = 30;
global.travelDistance = 800;
global.knockBack = 1;
global.stunLength = 4;
global.direction = 0;