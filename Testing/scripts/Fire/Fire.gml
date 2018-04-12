/// @arg projectile
/// @arg xOffset
/// @arg yOffset

var projectile = argument0;
var xOffset = argument1;
var yOffset = argument2;

_isAttacking = true;
var inst = instance_create_layer(x, y, 0, projectile);
with (inst)
{
	_origin = other;
	_xOffset = xOffset;
	_yOffset = yOffset;
}

alarm_set(0, inst._attackDuration);