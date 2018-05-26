DodgeProjectile();
ShootAtPlayer();

ai_atPathDestination = false;

if (_state == st_moveToCover || _state == st_retreat || _state == st_moveToPoint)
	MoveAlongPath();