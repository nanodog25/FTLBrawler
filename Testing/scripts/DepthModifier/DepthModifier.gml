///@arg lane
///@arg objectType

var lane = argument0+1;
var objectType = argument1;

var baseDepth = -1 * lane * 1000;

switch(objectType)
{
	case "Overlay":
		return baseDepth-115;
	case "FrontLane":
		return baseDepth-114;
	case "FrontPlatform":
		return baseDepth-63;
	case "FrontProjectile":
		return baseDepth-62;
	case "Projectile":
		return baseDepth-61;
	case "Player":
		return baseDepth-60;
	case "Enemy":
		return baseDepth-59;
	case "RearProjectile":
		return baseDepth-58;
	case "Platform":
		return baseDepth-7;
	case "Behind":
		return baseDepth-6;
	case "BackLane":
		return baseDepth-5;
	case "":
		return baseDepth;
}