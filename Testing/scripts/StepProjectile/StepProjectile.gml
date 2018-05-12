if (!_released)
	SetProjectileWhenFired();

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

	if (_destroySelf)
	{
		if (_laneCrossing && !_isVertical)
		{
			LaneSplash();
		}
		instance_destroy();
	}
}