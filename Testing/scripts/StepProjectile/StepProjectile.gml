if (!_released)
	SetProjectileWhenFired();

SetSpeedMod();

_xBefore = x;
_yBefore = y;
MoveProjectile();

if (!_isVertical)
{
	CheckProjectileCollision();

	if (!_destroySelf && _canDetonate && _origin.object_index == Player && keyboard_check_pressed(global.KeyFire1))
	{
		_colX = x;
		_colY = y;
		ProjectileCollision();
		_destroySelf = true;
	}
}

if (_destroySelf && _colX != 0 && _hasSlowAura)
	CreateSlowAura();
	
if (_destroySelf)
{
	if (_laneCrossing && !_isVertical)
	{
		LaneSplash();
	}
	instance_destroy();
}