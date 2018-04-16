/// @arg projectile
/// @arg xOffset
/// @arg yOffset

var projectile = argument0;
var xOffset = argument1;
var yOffset = argument2;

_canFire = false;

var inst = instance_create_layer(x, y, "Projectiles", projectile);
with (inst)
{
	_origin = other;
	_xOffset = xOffset;
	_yOffset = yOffset;
}

alarm_set(0, inst._rateOfFire);