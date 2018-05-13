///@arg lane
///@arg objectType

var lane = argument0+1;
var objectType = argument1;

var baseDepth = -1 * lane * 1000;

switch(objectType)
{
	case "Overlay":
		return baseDepth-14;
	case "FrontLane":
		return baseDepth-13;
	case "FrontProjectile":
		return baseDepth-12;
	case "Projectile":
		return baseDepth-11;
	case "Player":
		return baseDepth-10;
	case "Enemy":
		return baseDepth-9;
	case "RearProjectile":
		return baseDepth-8;
	case "Platform":
		return baseDepth-7;
	case "Behind":
		return baseDepth-6;
	case "BackLane":
		return baseDepth-5;
	case "":
		return baseDepth;
}