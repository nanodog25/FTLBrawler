/// @arg projectile
_isAttacking = true;
var inst = instance_create_layer(x, y, 0, argument0);
with (inst)
{
	direction = image_xscale;
}