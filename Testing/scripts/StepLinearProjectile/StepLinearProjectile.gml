if (!_released)
	SetProjectileWhenFired();

_xBefore = x;
_yBefore = y;
MoveLinearProjectile();
CheckProjectileCollision();

if (_destroySelf)
{
	if (_laneCrossing && !_isVertical)
	{
		LaneSplash();
	}
	instance_destroy();
}