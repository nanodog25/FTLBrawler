if (!_released)
	SetProjectileWhenFired();

_xBefore = x;
_yBefore = y;
MoveLobProjectile();
CheckProjectileCollision();

if (_destroySelf)
{
	instance_destroy();
}