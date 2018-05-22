var fire1 = keyboard_check(global.KeyHigh);
var fire2 = keyboard_check(global.KeyLow);
if (fire1 && _canFire)
{
	_canFire = false;

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
	}
	alarm_set(0, InSeconds(inst._rateOfFire)/_speedMod);
	_hasFired = true;
}
else if (fire2 && _canFire)
{
	_canFire = false;

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
	}

	alarm_set(0, InSeconds(inst._rateOfFire)/_speedMod);
	_hasFired = true;
}
_isAttacking = fire1 || fire2;