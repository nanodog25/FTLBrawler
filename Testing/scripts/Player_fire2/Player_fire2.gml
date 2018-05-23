///@arg laneOverwrite

var isLaneOverwrite = argument0;

var inst = instance_create_layer(x, y, "Projectiles", _projectile);
with (inst)
{
	_origin = other;
	_xOffset = 50;
	_yOffset = -40;

	_laneCrossing = global.laneCrossing2;
	_isVertical = global.isVertical2;
	_isIgnoringCover = global.isIgnoringCover2;
	_isPiercing = global.isPiercing2;
	_isDestructible = global.isDestructible2;
	_isLauncher = global.isLauncher2 || IsItemActive(global.ItemLaunchShot);
	_damage = global.damage2;
	_rateOfFire = global.rateOfFire2;
	_buildUpDuration = global.buildUpDuration2;
	_travelSpeed = global.travelSpeed2;
	_travelDistance = global.travelDistance2;
	_knockBack = global.knockBack2;
	_stunLength = global.stunLength2;
	_isUp = global.isUp2;
	_canDetonate = global.canDetonate2;
	_isLob = global.isLob2;
	_hasSlowAura = global.hasSlowAura2 || IsItemActive(global.ItemSlowShot);
	_hasSpeedAura = global.hasSpeedAura2;
	_isLaneOverwrite = isLaneOverwrite;
}

alarm_set(0, InSeconds(inst._rateOfFire)/_speedMod);
