if (!_released)
	SetProjectileWhenFired();

_xBefore = x;
_yBefore = y;
MoveLinearProjectile(_travelSpeed, _travelDistance);
CheckProjectileCollision();