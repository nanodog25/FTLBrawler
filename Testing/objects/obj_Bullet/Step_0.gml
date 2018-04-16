if (!_released)
	SetProjectileWhenFired();

MoveLinearProjectile(_travelSpeed, _travelDistance);
CheckProjectileCollision();