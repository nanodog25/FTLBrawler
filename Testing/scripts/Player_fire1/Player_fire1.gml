///@arg laneOverwrite

var isLaneOverwrite = argument0;

var inst = instance_create_layer(x, y, "Projectiles", _projectile);
with (inst)
{
	_origin = other;
	_xOffset = 50;
	_yOffset = -40;

	_laneCrossing = global.laneCrossing;
	_isVertical = global.isVertical;
	_isIgnoringCover = global.isIgnoringCover;
	_isPiercing = global.isPiercing;
	_isDestructible = global.isDestructible;
	_isLauncher = global.isLauncher || IsItemActive(global.ItemLaunchShot);
	_damage = global.damage;
	_rateOfFire = global.rateOfFire;
	_buildUpDuration = global.buildUpDuration;
	_travelSpeed = global.travelSpeed;
	_travelDistance = global.travelDistance;
	_knockBack = global.knockBack;
	_stunLength = global.stunLength;
	_isUp = global.isUp;
	_canDetonate = global.canDetonate;
	_isLob = global.isLob;
	_hasSlowAura = global.hasSlowAura || IsItemActive(global.ItemSlowShot);
	_hasSpeedAura = global.hasSpeedAura;
	_isLaneOverwrite = isLaneOverwrite;
}

alarm_set(0, InSeconds(inst._rateOfFire)/_speedMod);
