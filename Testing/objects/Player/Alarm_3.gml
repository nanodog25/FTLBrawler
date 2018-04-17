/// @description Punching
_isPunching = false;
var inst = instance_create_layer(30, -40, "Projectiles", obj_punch);
with (inst)
{
	_origin = other;
	_xOffset = 30;
	_yOffset = -40;
}