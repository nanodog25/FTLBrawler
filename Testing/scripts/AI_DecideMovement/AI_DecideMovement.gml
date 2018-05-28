DodgeProjectile();
ShootAtPlayer();

_onPath = false;

if (_state == st_moveToCover || _state == st_retreat || _state == st_moveToPoint)
	MoveAlongPath();