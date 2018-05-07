///@arg lane
///@arg objectType

var lane = argument0;
var objectType = argument1;

var baseDepth = -1 * argument0 * 1000;

switch(argument1)
{
	case "Projectile":
		return baseDepth-11;
	case "Player":
		return baseDepth-10;
	case "Enemy":
		return baseDepth-9;
	case "Platform":
		return baseDepth-8;
}