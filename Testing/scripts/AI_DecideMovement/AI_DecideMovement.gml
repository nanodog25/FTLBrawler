DodgeProjectile();
ShootAtPlayer();

if (_state == st_moveToCover || _state == st_retreat)
{
	MoveToSetPoint();
}