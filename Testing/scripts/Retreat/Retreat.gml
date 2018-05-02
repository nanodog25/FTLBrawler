if (_canFire)
{
	Fire(obj_Bullet, 50, -40);
	_isAttacking = true;
}
else
{
	_xSpeed = (_speed/2) * -_direction
}
